#!/bin/bash

# Wallpaper's directory.
dir="/home/cpr/Pictures/Wallpapers"

# export DBUS_SESSION_BUS_ADDRESS environment variable
PID=$(pgrep gnome-shell-cal)
export DBUS_SESSION_BUS_ADDRESS=$(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$PID/environ|cut -d= -f2-)

# Random wallpaper.
wallpaper=`find "${dir}" -type f | shuf -n1`

# Change wallpaper.
gsettings set org.gnome.desktop.background picture-options "spanned"
gsettings set org.gnome.desktop.background picture-uri "file://${wallpaper}"

