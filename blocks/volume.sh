#!/bin/bash

volume=$(pamixer --get-volume)
mute=$(pamixer --get-mute)

ICON="\x0f󰕾\x0b"
buffer=" "
[ "$volume" -ge 100 ] && buffer=""
[ "$volume" -lt 50 ] && ICON="\x0f󰖀\x0b"
[ "$volume" -lt 10 ] && ICON="\x0f󰕿 \x0b"
[ "$mute" == "true" ] && ICON="\x0f󰖁\x0b"

printf "$ICON%s%s%%"  "$buffer" "$volume"
