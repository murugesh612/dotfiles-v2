#!/bin/bash

mkdir -p ~/Pictures/Screenshots

selected_area=$(slurp)

timestamp=$(date +%Y%m%d_%H%M%S)
screenshot_path=~/Pictures/Screenshots/screenshot_$timestamp.png

grim -g "$selected_area" "$screenshot_path"

wl-copy <"$screenshot_path"
