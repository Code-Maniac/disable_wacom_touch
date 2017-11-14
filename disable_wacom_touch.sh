#!/bin/bash

x=$(xsetwacom --list devices | grep TOUCH | cut -d " " -f 8 | cut -d "	" -f 1)
echo "Disable id " $x
xsetwacom --set $x Touch off
