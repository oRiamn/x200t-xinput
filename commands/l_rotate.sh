#!/bin/bash

function l_rotate {

    local deviceID=$1
    local deviceName=$2

    # Get the current orientation of the tablet
    rotate=$(xrandr -q|grep -v dis|grep connected| cut -d\( -f1 | awk '{print $5}')

    if [ "$rotate" = "" ]
    then
        rotate="normal"
    fi

    # Work out the next tablet and screen orientations (rotating clockwise)
    case "$rotate" in
        normal) nextOrient="left" ;;
        left) nextOrient="inverted" ;;
        inverted) nextOrient="right" ;;
        right) nextOrient="normal" ;;
    esac

   rotate ${deviceID} ${deviceName} ${nextOrient}
}