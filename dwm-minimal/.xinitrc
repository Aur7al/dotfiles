[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
xrandr --rate 60.0 &
powerprofilesctl set power-saver &
feh --bg-fill ~/Files/Wallpaper.jpg &
exec dwm
