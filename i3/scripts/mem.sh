#!/bin/bash
TOTAL=$(cat /proc/meminfo | grep "MemTotal" | sed 's/[^0-9]*//g')
FREE=$(cat /proc/meminfo | grep "MemFree" | sed 's/[^0-9]*//g')
BUFFERS=$(cat /proc/meminfo | grep "Buffers" | sed 's/[^0-9]*//g' | head -1)
CACHED=$(cat /proc/meminfo | grep "Cached:" | sed 's/[^0-9]*//g' | head -1)
USED=`expr $TOTAL - $FREE - $BUFFERS - $CACHED`

USEDG=$(bc <<< "scale=1; $USED / 1048576")
TOTALG=$(bc <<< "scale=1; $TOTAL / 1048576")

FSTCHAR="$(echo $USEDG | head -c 1)"
ZERO='0'
if [ "$FSTCHAR" == "." ]; then
    USEDG=$ZERO$USEDG
fi

RED='<span foreground="#FF0000">'
GREEN='<span foreground="#00FF00">'
YELLOW='<span foreground="#FFFF00">'
SUFFIX='</span>'
SIGN='G'
SEPERATOR='/'

if [ $((USED)) -le 4000000 ]; then
    echo $GREEN$USEDG$SIGN$SEPERATOR$TOTALG$SIGN$SUFFIX
    exit
fi
if [ $((USED)) -le 6000000 ]; then
    echo $YELLOW$USEDG$SIGN$SEPERATOR$TOTALG$SIGN$SUFFIX
    exit
fi
if [ $((USED)) -le 8054848 ]; then
    echo $RED$USEDG$SIGN$SEPERATOR$TOTALG$SIGN$SUFFIX
    exit
fi
