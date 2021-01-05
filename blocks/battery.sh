#!/bin/bash
read -r capacity </sys/class/power_supply/BAT0/capacity
read -r status </sys/class/power_supply/BAT0/status

ICON="\x03󰂑\x0b"
buffer=" "
[ "$capacity" -ge 100 ] && buffer=""
[ "$status" == "Discharging" ] && ICON="\x0d󰂀\x0b"
[ "$capacity" -le 25 ] && ICON="\x0c󰂃\x0b"
[ "$status" == "Charging" ] && ICON="\x0e󰂄\x0b"
[ "$status" == "Full" ] && ICON="\x11󰁹\x0b"

printf "$ICON%s%s%%" "$buffer" "$capacity"
