#!/bin/bash
if [ $# -ne 2 ]; then
    echo "Usage: $0 <source> <destination>"
    exit 1
fi

if [ -f "$1" ]; then
    cp "$1" "$2"
    echo "File copied from $1 to $2"
else
    echo "Source file does not exist."
fi
