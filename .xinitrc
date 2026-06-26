picom &
xwallpaper --zoom ~/Files/Wallpapers/PurpleCottage.jpg &
powerprofilesctl set power-saver &
xrandr --rate 60
xrandr --output eDP --gamma 1:0.85:0.7
while xsetroot -name "`date "+ 󱑁 %H:%M |  %a %d %b"`"
do
    sleep 60
done &
exec dwm
