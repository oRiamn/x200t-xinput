#!/bin/bash

function rotate {

    local deviceID=$1
    local deviceName=$2
    local rotate=$3

    # Work out the next tablet and screen orientations (rotating clockwise)
    case "$rotate" in
       right) nextRotate="cw";;
        inverted)   nextRotate="half";;
        left) nextRotate="ccw";;
        normal)  nextRotate="none";;
    esac

    # Rotate the screen
    xrandr -o $rotate

    echo -e "\e[1m$deviceName\e[21m orientation is now $rotate"

    # Rotate the tablet
    xsetwacom set "$deviceName" Rotate $nextRotate
}