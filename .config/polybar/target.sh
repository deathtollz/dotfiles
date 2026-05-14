#!/usr/bin/env bash
TARGET_FILE="$HOME/.target"
if [[ -f "$TARGET_FILE" ]]; then
    TARGET=$(tr -d '[:space:]' < "$TARGET_FILE")
    if [[ -n "$TARGET" ]]; then
        echo " $TARGET"
    else
        echo " No target"
    fi
else
    echo " No target"
fi
