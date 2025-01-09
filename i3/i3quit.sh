#!/bin/bash
# a simple logout dialog

# launch exit menu
choice=`echo -e "0: Suspend\n1: Shutdown\n2: Reboot\n3: Logout\n4: Cancel" | rofi -dmenu -p "select an action" | cut -d ':' -f 1`

# execute the choice in background
case "$choice" in
    0) i3lock -i ~/.config/i3image.png ;;
    # 1) systemctl poweroff & ;;
    # 2) systemctl reboot & ;;
    1) shutdown & ;;
    2) reboot & ;;
    3) i3-msg exit & ;;
    4) exit ;;
esac
