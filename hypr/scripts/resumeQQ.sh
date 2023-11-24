#!/bin/bash
# 打开 QQ
#
file_path="$HOME/.config/QQ/qq_window_id"
if [ -f "$file_path" ]; then
    w_id=$(cat "$file_path")
    xdotool windowmap $w_id
else
    bash linuxqq   
fi