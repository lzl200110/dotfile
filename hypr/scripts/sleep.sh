swayidle -w timeout 300 'swaylock -f -c ' \
            timeout 600 'hyprctl dispatch dpms off' \
            resume 'hyprctl dispatch dpms on' \
            timeout 1800 'systemctl suspend' \
            before-sleep 'swaylock -f -c ' &