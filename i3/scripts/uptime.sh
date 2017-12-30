#!/bin/bash
ORANGE='<span foreground="#ffa100">'
BLUE='<span foreground="#4286f4">'
WHITE='<span foreground="#ffffff">'
SUF='</span>'
LAB='⛯ '

MLAB='M: '
HLAB='H: '
DLAB='D: '

MINUTES=$(uptime -p | grep -oP "\d+.?(?=minute)")
HOURS=$(uptime -p | grep -oP "\d+.?(?=hour)")
DAYS=$(uptime -p | grep -oP "\d+.?(?=day)")

if [[ -z "${MINUTES// }" ]]
then
    MINUTES = "0 "
fi

if [[ -z "${HOURS// }" ]]
then
    HOURS="0 "
fi

if [[ -z "${DAYS// }" ]]
then
    DAYS="0 "
fi

echo $WHITE$LAB$SUF$BLUE$DLAB$SUF$ORANGE$DAYS$SUF$BLUE$HLAB$SUF$ORANGE$HOURS$SUF$BLUE$MLAB$SUF$ORANGE$MINUTES$SUF
