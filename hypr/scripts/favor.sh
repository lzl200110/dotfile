#!/bin/bash
#
#

hyprctl hyprpaper preload "~/Pictures/wallpaper/10.png" 

if [ "$(hyprctl activeworkspace -j | jq -r ".monitorID")" = "1" ]; then
    hyprctl hyprpaper wallpaper "DP-1,~/Pictures/wallpaper/10.png"
else
    hyprctl hyprpaper wallpaper "eDP-1,~/Pictures/wallpaper/10.png"
fi
hyprctl hyprpaper unload all