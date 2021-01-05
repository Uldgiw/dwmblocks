#!/bin/bash

clock=$(date '+%I')

case "$clock" in
	"00") ICON="\x10󱑊\x0b" ;;
	"01") ICON="\x10󱐿\x0b" ;;
	"02") ICON="\x10󱑀\x0b" ;;
	"03") ICON="\x10󱑁\x0b" ;;
	"04") ICON="\x10󱑂\x0b" ;;
	"05") ICON="\x10󱑃\x0b" ;;
	"06") ICON="\x10󱑄\x0b" ;;
	"07") ICON="\x10󱑅\x0b" ;;
	"08") ICON="\x10󱑆\x0b" ;;
	"09") ICON="\x10󱑇\x0b" ;;
	"10") ICON="\x10󱑈\x0b" ;;
	"11") ICON="\x10󱑉\x0b" ;;
	"12") ICON="\x10󱑊\x0b" ;;
esac

time=$(date "+%R")

printf "$ICON%s" "$time"
