#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Github : @adi1090x
#
## Rofi   : Power Menu
#
## Available Styles
#
## style-1   style-2   style-3   style-4   style-5

# Current Theme
dir="$HOME/.config/rofi/powermenu"
theme='style-1.rasi'

# CMDs
uptime="`uptime -p | sed -e 's/up //g'`"
host=`hostname`

rofi_command="rofi -theme $dir/$theme"
one="Goodbye $USER"
two="Uptime: $uptime"
# Options
shutdown='' 
reboot=''
lock=''
suspend=''
logout=''


options="$lock\n$suspend\n$logout\n$reboot\n$shutdown"

chosen="$(echo -e "$options" | $rofi_command -p "$one" -mesg "$two" -dmenu)"

case $chosen in
    $shutdown)
        systemctl poweroff
        ;;
    $reboot)
        systemctl reboot
        ;;
    $lock)
		if [[ -x '/usr/bin/betterlockscreen' ]]; then
			betterlockscreen -l
		elif [[ -x '/usr/bin/i3lock' ]]; then
			i3lock
		fi
        ;;
    $suspend)
        mpc -q pause
        amixer set Master mute
        systemctl suspend
        ;;
    $logout)
        if [[ "$DESKTOP_SESSION" == 'hyprland' ]]; then
            hyprctl dispatch exit exit
        fi
        ;;
esac

