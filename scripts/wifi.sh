#!/bin/sh
# wifi block - iwd (iwctl), teal accent when connected, muted when down
# Adjust "wlan0" to your actual interface name (check with: iwctl device list)
iface="wlp0s20f3"

ssid=$(iwctl station "$iface" show 2>/dev/null | awk '/Connected network/ {for(i=3;i<=NF;i++) printf "%s ", $i; print ""}' | sed 's/ *$//')

if [ -z "$ssid" ]; then
    echo "^c#5c5457^ 直 down^d^"
else
    echo "^c#17bebb^ 直 $ssid^d^"
fi
