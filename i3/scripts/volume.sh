#!/bin/bash
VOL=$(amixer get Master | grep -E -o '[0-9]{1,3}?%' | head -1 | sed 's/[^0-9]*//g')
RED='<span foreground="#FF0000">'
GREEN='<span foreground="#00FF00">'
YELLOW='<span foreground="#FFFF00">'
SUFFIX='</span>'
SIGN='%'

VOLSIGN='<span foreground="#FFFFFF">🔊 </span>'
 if [ $((VOL)) -le 75 ]; then
     echo $VOLSIGN $GREEN$VOL$SIGN$SUFFIX
     exit
 fi
 if [ $((VOL)) -le 90 ]; then
     echo $VOLSIGN $YELLOW$VOL$SIGN$SUFFIX
     exit
 else
      echo $VOLSIGN $RED$VOL$SIGN$SUFFIX
      exit
 fi
