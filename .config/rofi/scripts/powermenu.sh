#!/usr/bin/env bash
chosen=$(printf "LOCK\nSLEEP\nLOGOUT\nRESTART\nSHUTDOWN" | \
    rofi -no-config \
         -theme ~/.config/rofi/themes/pentest.rasi \
         -dmenu -i -p " POWER")
case "$chosen" in
    LOCK)     i3lock ;;
    SLEEP)    systemctl suspend ;;
    LOGOUT)   bspc quit 2>/dev/null || pkill -KILL -u "$USER" ;;
    RESTART)  systemctl reboot ;;
    SHUTDOWN) systemctl poweroff ;;
esac
