#!/bin/bash

set -e

command="$1"
deviceName=$(cat $PWD/.env | grep "^$2:" | cut -d "'" -f2)
deviceId=$(xinput list --id-only "$deviceName")
shift

for file in $PWD/commands/*.sh
do
    source $file
done
# exit 128
"${command}" "${deviceId}" "${deviceName}" "${args}"
