#!/bin/bash

if [ ! -f $HOME/.dark-theme-app-list ]; then
    cp app-list $HOME/.dark-theme-app-list
    echo "Config file generated."
fi

while read class_name; do
    classes=$(xdotool search --class "$class_name")
    while IFS= read -r window_id; do
        xprop -f _GTK_THEME_VARIANT 8u -set _GTK_THEME_VARIANT "dark" -id "$window_id"
    done <<< "$classes"
done < $HOME/.dark-theme-app-list

