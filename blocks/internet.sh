#!/bin/bash

read -r status </sys/class/net/wlp3s0/operstate
quality=$(cat /proc/net/wireless | grep wlp | cut -f5 -d" " | sed "s/\.//")

ICON="\x0c󰤭\x0b"

if [[ $status == "up" ]]; then
[ "$quality" -ge 80 ] && ICON="\x0e󰤨\x0b"
[ "$quality" -ge 60 ] && ICON="\x0e󰤥\x0b"
[ "$quality" -ge 40 ] && ICON="\x0e󰤢\x0b"
[ "$quality" -lt 40 ] && ICON="\x0e󰤟\x0b"

printf "$ICON %s%%" "$quality"

else
printf "$ICON    "
fi
