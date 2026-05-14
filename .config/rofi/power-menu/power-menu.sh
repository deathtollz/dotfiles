#!/usr/bin/env bash
chosen=$(printf " LOCK\n SLEEP\n LOGOUT\n RESTART\n SHUTDOWN" | \
    rofi -no-config \
         -theme ~/.config/rofi/themes/matrix.rasi \
         -dmenu -i \
         -p " POWER" \
         -theme-str 'window {width: 280px;} listview {lines: 5;}')

case "$chosen" in
    *LOCK)     betterlockscreen -l 2>/dev/null || i3lock -c 050805 ;;
    *SLEEP)    systemctl suspend ;;
    *LOGOUT)   bspc quit ;;
    *RESTART)  systemctl reboot ;;
    *SHUTDOWN) systemctl poweroff ;;
esac
