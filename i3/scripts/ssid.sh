RED='<span foreground="#FF0000">'
WHITE='<span foreground="#ffa100">'
SUFFIX='</span>'
DOWN='down'
SSID=$(nmcli connection | grep wlan0 | grep -o '^\S\S\S\S*') # who has more than 5 spaces in their SSID?
if [ -n "$SSID" ]; then
    echo $WHITE$SSID$SUFFIX
    exit
else
    echo '<span foreground="#FF0000">down</span>'
    exit
fi
