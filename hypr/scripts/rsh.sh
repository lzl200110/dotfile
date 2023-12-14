#!/bin/bash
# 
#

hyprctl hyprpaper preload "~/Pictures/wallpaper/5.jpg" 

if [ "$(hyprctl activeworkspace -j | jq -r ".monitorID")" = "1" ]; then
    hyprctl hyprpaper wallpaper "DP-1,~/Pictures/wallpaper/5.jpg"
else
    hyprctl hyprpaper wallpaper "eDP-1,~/Pictures/wallpaper/5.jpg"
fi

hyprctl hyprpaper unload all