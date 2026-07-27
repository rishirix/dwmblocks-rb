#!/bin/sh
# battery block - color shifts red when low
bat=$(cat /sys/class/power_supply/BAT0/capacity 2>/dev/null || echo "N/A")
status=$(cat /sys/class/power_supply/BAT0/status 2>/dev/null)

icon=""
[ "$status" = "Charging" ] && icon=""

if [ "$bat" -le 20 ] 2>/dev/null; then
    echo "^c#cd5334^ $icon $bat%^d^"
elif [ "$bat" -le 50 ] 2>/dev/null; then
    echo "^c#edb88b^ $icon $bat%^d^"
else
    echo "^c#7fb069^ $icon $bat%^d^"
fi
