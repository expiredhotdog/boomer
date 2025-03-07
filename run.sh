#!/bin/bash

if pgrep -x "boomer" > /dev/null; then
    echo "Boomer is already running."
    exit 1
fi
exec $( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )/boomer
