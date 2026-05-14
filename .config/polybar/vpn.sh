#!/usr/bin/env bash
if ip link show tun0 2>/dev/null | grep -q "state UP"; then
    VPN_IP=$(ip -4 addr show tun0 2>/dev/null | awk '/inet / {print $2}' | cut -d/ -f1)
    echo " ${VPN_IP:-VPN}"
else
    DEFAULT=$(ip -4 route show default 2>/dev/null | head -n1)
    if [[ -n "$DEFAULT" ]]; then
        echo " Disconnected"
    else
        echo " Disconnected"
    fi
fi
