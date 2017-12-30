#!/bin/bash
ORANGE='<span foreground="#ffa100">'
RED='<span foreground="#ff0000">'
SUFFIX='</span>'
NOI='no internet'
IPLIST=$(hostname -I)
IPARR=($IPLIST)
IP=$(hostname -I | head -n1 | awk '{print $1;}')
if [ -z "$IPLIST" ]; then
    echo $RED$NOI$SUFFIX
else
    echo $ORANGE$IP$SUFFIX
fi
