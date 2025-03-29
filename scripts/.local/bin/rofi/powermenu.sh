#!/usr/bin/env bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

POSITION=0
YOFF=0
XOFF=0

if [ -r "$DIR/config" ]; then
  source ./config
elif [ -r "$HOME/.config/rofi/power" ]; then
  source "$HOME/.config/rofi/power"
else
  echo "WARNING: config file not found! Using default values."
fi

_rofi() {
  rofi \
    -dmenu \
    -no-custom true \
    -disable-history true \
    -cycle true \
    -p "power" \
    -sep '|' \
    -location "$POSITION" \
    -yoffset "$YOFF" \
    -xoffset "$XOFF" \
    "$@"
}

LINES="lock screen|sleep|log out|power off|restart"
CHENTRY=$(echo "$LINES" | _rofi)

if [ "$CHENTRY" = "lock screen" ]; then
  confirm=$(echo "yes|no" | _rofi -mesg "Are you sure?")
  if [ "$confirm" = "yes" ]; then
    hyprlock
  fi
elif [ "$CHENTRY" = "sleep" ]; then
  confirm=$(echo "yes|no" | _rofi -mesg "Are you sure?")
  if [ "$confirm" = "yes" ]; then
    systemctl suspend
  fi
elif [ "$CHENTRY" = "log out" ]; then
  hyprctl dispatch exit 1
elif [ "$CHENTRY" = "power off" ]; then
  confirm=$(echo "yes|no" | _rofi -mesg "Are you sure?")
  if [ "$confirm" = "yes" ]; then
    systemctl poweroff
  fi
elif [ "$CHENTRY" = "restart" ]; then
  confirm=$(echo "yes|no" | _rofi -mesg "Are you sure?")
  if [ "$confirm" = "yes" ]; then
    reboot
  fi
else
  echo "err"
fi
