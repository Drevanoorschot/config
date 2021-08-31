#!/bin/bash
MAX='852'
ZEROES='00'
HUNDRED='100'
CURRENT=$(cat /sys/class/backlight/intel_backlight/brightness)
CUR=$CURRENT$ZEROES
BRIGHTNESS_FLOAT=`xrandr --verbose | grep -A 10 eDP-1 | grep Brightness | sed 's/Brightness://g'`
BRIGHTNESS_MUL=`expr $BRIGHTNESS_FLOAT*$HUNDRED | bc`
BRIGHTNESS=`printf "%.0f" $BRIGHTNESS_MUL`


ORANGE='<span foreground="#ffa100">'
WHITE='<span foreground="#ffffff">'
SUFFIX='</span>'
PERCENTAGE='%'
ICON='🌓 '

echo $WHITE$ICON $SUFFIX $ORANGE$BRIGHTNESS$PERCENTAGE$SUFFIX
