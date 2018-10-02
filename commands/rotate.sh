#!/bin/bash

function rotate {

    local deviceID=$1
    local deviceName=$2
    local rotate=$3

    # Work out the next tablet and screen orientations (rotating clockwise)
    case "$rotate" in
        normal) nextRotate="cw"
            nextOrient="right" ;;
        right)   nextRotate="half"
            nextOrient="inverted" ;;
        inverted) nextRotate="ccw"
            nextOrient="left" ;;
        left)  nextRotate="none"
            nextOrient="normal" ;;
    esac

    # Rotate the screen
    xrandr -o $nextOrient

    echo -e "\e[1m$deviceName\e[21m is now $nextOrient"

    # Rotate the tablet
    xsetwacom set "$deviceName" Rotate $nextRotate
}