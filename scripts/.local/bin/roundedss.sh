#!/bin/bash

mkdir -p ~/Pictures/Screenshots

selected_area=$(slurp)

timestamp=$(date +%Y%m%d_%H%M%S)
screenshot_path=~/Pictures/Screenshots/screenshot_$timestamp.png
rounded_screenshot_path=~/Pictures/Screenshots/screenshot_rounded_$timestamp.png

grim -g "$selected_area" "$screenshot_path"

convert "$screenshot_path" \
  -define png:compression-level=9 \
  \( +clone -alpha extract -draw 'fill black polygon 0,0 0,1000 1000,1000 1000,0 fill white circle 0,0 100,100' \) \
  -alpha off -compose CopyOpacity -composite \
  "$rounded_screenshot_path"
