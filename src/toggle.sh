#!/bin/bash

function toggle {
  local deviceID=$1
  local deviceName=$2
  
  local state=$(xinput list-props "$deviceID" | grep "Device Enabled" | grep -o "[01]$")

  if [ $state == '1' ];then
    xinput --disable "$deviceID"
    echo -e "\e[1m$deviceName\e[21m is now disable"
  else
    xinput --enable "$deviceID"
    echo -e "\e[1m$deviceName\e[21m is now enable"
  fi
}