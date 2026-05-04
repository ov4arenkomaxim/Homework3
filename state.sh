#!/bin/bash
read -p "Enter filename to check: " file

if [ -f "$file" ]; then
    echo "File '$file' exists."
else
    echo "File '$file' does not exist."
fi
