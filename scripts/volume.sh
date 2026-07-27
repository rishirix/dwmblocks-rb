#!/bin/sh
# volume block - pipewire (wpctl), color-coded by level
vol_raw=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ 2>/dev/null)
vol=$(echo "$vol_raw" | grep -oP '\d+\.\d+' | awk '{printf "%.0f", $1*100}')
muted=$(echo "$vol_raw" | grep -q "MUTED" && echo true || echo false)

if [ -z "$vol" ]; then
    echo "^c#5c5457^ N/A^d^"
elif [ "$muted" = "true" ]; then
    echo "^c#5c5457^ $vol%^d^"
elif [ "$vol" -lt 30 ]; then
    echo "^c#17bebb^ $vol%^d^"
elif [ "$vol" -lt 70 ]; then
    echo "^c#7fb069^ $vol%^d^"
else
    echo "^c#edb88b^ $vol%^d^"
fi
