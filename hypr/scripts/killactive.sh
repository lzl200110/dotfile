#!/bin/bash
# 关闭一个窗口,若该window为QQ，设置  ~/.config/.qq_window_id
#
file_path="$HOME/.config/QQ/qq_window_id"
if [ "$(hyprctl activewindow -j | jq -r ".class")" = "QQ" ]; then
    wid=`xdotool getactivewindow`
    echo $wid > $file_path 
    xdotool windowunmap $wid
else
    hyprctl dispatch killactive ""
fi