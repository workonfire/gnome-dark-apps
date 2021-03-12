#!/bin/bash

config_file="$HOME/.dark-theme-app-list"

if [ ! -f $config_file ]; then
    if [ -f /usr/share/gnome-dark-apps/app-list ]; then
        cp /usr/share/gnome-dark-apps/app-list $config_file
    else
        cp app-list $config_file
    fi
    echo "Config file generated at $config_file"
    exit 0
fi

while read class_name; do
    if ! type "xdotool" &> /dev/null; then
        echo "This script requires xdotool."
        exit
    fi
    classes=$(xdotool search --class "$class_name")
    while IFS= read -r window_id; do
        if [ "$1" == "--debug" ]; then
            xprop -f _GTK_THEME_VARIANT 8u -set _GTK_THEME_VARIANT "dark" -id "$window_id"
        else
            xprop -f _GTK_THEME_VARIANT 8u -set _GTK_THEME_VARIANT "dark" -id "$window_id" &>> /dev/null
        fi
    done <<< "$classes"
done < $config_file

