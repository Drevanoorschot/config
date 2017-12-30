RED='<span foreground="#FF0000">'
WHITE='<span foreground="#ffa100">'
SUFFIX='</span>'
DOWN='down'
SSID=$(iwgetid -r)
if [ -n "$SSID" ]; then
    echo $WHITE$SSID$SUFFIX
    exit
else
    echo '<span foreground="#FF0000">down</span>'
    exit
fi
