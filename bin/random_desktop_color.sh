#!/bin/bash
#
# Set the desktop to a random color from the list

# Colours
# More here: http://www.google.com/design/spec/style/color.html#color-ui-color-palette
COLORS=("#e51c23" "#e91e63" "#9c27b0" "#673ab7" "#3f51b5" "#5677fc" "#03a9f4" "#00bcd4" \
        "#009688" "#259b24" "#8bc34a" "#cddc39" "#ffeb3b" "#ffc107" "#ff9800" "#ff5722" )

# Set desktop to random color
LENGTH=${#COLORS[@]}
xsetroot -solid ${COLORS[RANDOM % LENGTH]}