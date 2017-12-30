#!/bin/bash
RED='<span foreground="#FF0000">'
GREEN='<span foreground="#00FF00">'
YELLOW='<span foreground="#FFFF00">'
SUFFIX='</span>'
SIGN='%'
PERCENTAGE=$(upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep -E  "percentage" | sed 's/[^0-9]*//g')
 if [ $((PERCENTAGE)) -ge 50 ]; then
     echo $GREEN$PERCENTAGE$SIGN$SUFFIX
     exit
 fi
 if [ $((PERCENTAGE)) -ge 15 ]; then
     echo $YELLOW$PERCENTAGE$SIGN$SUFFIX
     exit
 fi
 if [ $((PERCENTAGE)) -ge 0 ]; then
      echo $RED$PERCENTAGE$SIGN$SUFFIX
      exit
 fi



#  "{
#      \"version\" : 1,
# \"full_text\": \"E: 10.0.0.1 (1000 Mbit/s)\",
# \"color\": \"#ffffff\"
# }"
