#!/usr/bin/env bash
TARGET_FILE="$HOME/.target"
CURRENT=$(tr -d '[:space:]' < "$TARGET_FILE" 2>/dev/null || true)
if [[ -n "$CURRENT" ]]; then
    echo "" > "$TARGET_FILE"
else
    NEW=$(echo "" | rofi -dmenu -p " Set target IP:" \
        -theme ~/.config/rofi/themes/pentest.rasi 2>/dev/null || true)
    [[ -n "$NEW" ]] && echo "$NEW" > "$TARGET_FILE"
fi
