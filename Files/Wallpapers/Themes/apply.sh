#!/usr/bin/bash

theme=0 # None

if [[ "$1" = "ChicagoNight" || "$1" = "YourNameDay" ]]; then
    theme=1 # Blue
elif [[ "$1" = "PurpleCottage" ]]; then
    theme=2 # Purple
elif [[ "$1" = "LondonNight" || "$1" = "YourNameDusk" ]]; then
    theme=3 # Red
elif [[ "$1" = "RuralSunset" ]]; then
    theme=4 # Orange
elif [[ "$1" = "ClassicFarmArt" || "$1" = "CountrysideArt" ]]; then
    theme=5 # Yellow
elif [[ "$1" = "CountrysideRoad" || "$1" = "CountrysideScene" || "$1" = "FarmHouse" || "$1" = "RoadSunsetTuscany" ]]; then
    theme=6 # Golden
elif [[ "$1" = "PinkSky" || "$1" = "PixelArtDusk" ]]; then
    theme=7 # Pink
elif [[ "$1" = "ForestHills" || "$1" = "ClassicGrass" || "$1" = "FarmHouseEngland" || "$1" = "FarmHouseTuscany" || "$1" = "WinXP" ]]; then
    theme=8 # Green
else
    theme=9 # Colourless
fi

cp ~/Files/Wallpapers/Themes/config/dwm/$theme ~/dwm/colours.h
sed -i "/xwallpaper/c\xwallpaper --zoom ~/Files/Wallpapers/$1.jpg &" ~/.xinitrc
cp ~/Files/Wallpapers/Themes/config/rmpc/$theme ~/.config/rmpc/themes/theme.ron
cp ~/Files/Wallpapers/Themes/config/bashrc/$theme ~/.bashrc
cd ~/dwm
sudo make clean install
killall dwm
