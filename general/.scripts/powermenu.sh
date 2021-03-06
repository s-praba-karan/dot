#!/usr/bin/env bash

config="$HOME/.config/rofi/powermenu.rasi"

opt_reboot="ﰇ"
opt_poweroff="襤"
opt_exit=""

selected=$(printf "%s\n%s\n%s\n" "$opt_reboot" "$opt_poweroff" "$opt_exit" | \
    rofi -dmenu -theme "$config" -selected-row 1)

case "$selected" in
    "$opt_reboot")
	reboot
	;;
    "$opt_poweroff")
	poweroff
	;;
    "$opt_exit")
	~/.scripts/lock.sh
	;;
esac
