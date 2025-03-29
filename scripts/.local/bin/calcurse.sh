#!/bin/bash
kitty --class=dropdown_calcurse -e calcurse &
sleep 1
wmctrl -r dropdown_calcurse -e 0,100,100,800,600
