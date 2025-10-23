#!/bin/bash

shopt -s nullglob

if [[ -z $(which feh) ]]; then
	echo "wallpaper err: Can not found command feh" > ~/i3wm-wallpaper.err
	exit 127
fi

# wallpaper directory
path=~/Pictures/wallpapers/

#time interval
interval=10m

while true; do
  feh --recursive --bg-fill --randomize $path/*
	sleep $interval
done
