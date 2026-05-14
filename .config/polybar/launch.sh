#!/usr/bin/env bash
pkill -x polybar 2>/dev/null || true
while pgrep -x polybar >/dev/null; do
    sleep 0.5
done
mkdir -p ~/.cache/polybar
polybar -c ~/.config/polybar/config.ini main \
    >~/.cache/polybar/main.log 2>&1 &
echo "[*] Polybar launched (PID $!)"
