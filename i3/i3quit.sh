#!/bin/bash
# a simple logout dialog

# launch exit menu
choice=`echo -e "0: Suspend\n1: Shutdown\n2: Reboot\n3: Logout\n4: Cancel" | rofi -dmenu -p "select an action" | cut -d ':' -f 1`

# execute the choice in background
case "$choice" in
    0) i3lock -c 103c48; systemctl hibernate & ;;
    1) systemctl poweroff & ;;
    2) systemctl reboot & ;;
    3) i3-msg exit & ;;
    4) exit ;;
esac
