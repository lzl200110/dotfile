#!/bin/bash
# 随机切换一个壁纸
#

filename1=$(ls ~/Pictures/wallpaper | shuf | head -n 1)
hyprctl hyprpaper preload "~/Pictures/wallpaper/${filename1}"
if [ "$(hyprctl activeworkspace -j | jq -r ".monitorID")" = "1" ]; then
    hyprctl hyprpaper wallpaper "DP-1,~/Pictures/wallpaper/${filename1}"
else
    hyprctl hyprpaper wallpaper "eDP-1,~/Pictures/wallpaper/${filename1}"
fi
hyprctl hyprpaper unload all


