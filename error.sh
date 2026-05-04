#!/bin/bash
read -p "Enter filename: " file
if [ -f "$file" ]; then
    cat "$file"
else
    echo "Error: File '$file' does not exist." >&2
    exit 1
fi
