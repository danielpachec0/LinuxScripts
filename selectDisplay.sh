aux=`xrandr | grep 'HDMI-A-0 disconnected'`
echo "$aux"
if [ -z "$aux"]
then
    echo teste1
    xrandr --output HDMI-A-0 --auto
    xrandr --output eDP --off
else
    echo teste2
    xrandr --output eDP --mode 1920x1080
    xrandr --output HDMI-A-0 --off
fi