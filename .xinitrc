#!/bin/sh
xfce4-power-manager &
xrandr --auto
picom &
dunst &
udiskie &
#feh --bg-scale /home/relja/Pics/Wallpapers/currentWP.jpg
#feh --bg-scale /home/relja/Pics/Wallpapers/wallpaper2.jpg
feh --bg-scale /home/relja/Pics/Wallpapers/805185.jpg
dwmblocks &
python /home/relja/.local/bin/zenkakuhankaku.py &
wmname "LG3D"
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
exec dwm
#exec dbus-launch dwm
