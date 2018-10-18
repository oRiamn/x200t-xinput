#!/bin/bash

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

command=$1
deviceName=$(cat "$DIR"/.env | grep "^$2:" | cut -d "'" -f2)
deviceId=$(xinput list --id-only "$deviceName")
shift 2

for file in $DIR/commands/*.sh
do
    source $file
done

"${command}" "${deviceId}" "${deviceName}" "$*"
