#!/bin/bash
MAX='852'
ZEROES='00'
CURRENT=$(cat /sys/class/backlight/intel_backlight/brightness)
CUR=$CURRENT$ZEROES
BRIGHTNESS=`expr $CUR / $MAX`

ORANGE='<span foreground="#ffa100">'
WHITE='<span foreground="#ffffff">'
SUFFIX='</span>'
PERCENTAGE='%'
ICON='🌓 '

echo $WHITE$ICON $SUFFIX $ORANGE$BRIGHTNESS$PERCENTAGE$SUFFIX
