#!/bin/bash
# 随机切换一个壁纸
#

filename1=$(ls ~/Pictures/wallpaper | shuf | head -n 1)
swww img ~/Pictures/wallpaper/${filename1} --transition-type random --transition-step 2  --transition-fps 60 --transition-bezier 1,1,1,1

