#!/bin/bash
RED='<span foreground="#FF0000">'
GREEN='<span foreground="#00FF00">'
SUFFIX='</span>'
STATE=$(upower -d | grep "state")
if [[ $STATE == *"discharging"* ]]; then
    MSG='BAT'
    echo $RED$MSG$SUFFIX
elif [[ $STATE == *"charging"* ]]; then
    MSG='CHR'
    echo $GREEN$MSG$SUFFIX
else
    MSG='FULL'
    echo $GREEN$MSG$SUFFIX
fi
