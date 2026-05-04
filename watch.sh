#!/bin/bash
WATCH_DIR="$HOME/watch"
# New directory if it doesn't exist
mkdir -p "$WATCH_DIR"
# Watching directory for new files
inotifywait -m -e create --format '%f' "$WATCH_DIR" | while read FILE
do
    FULL_PATH="$WATCH_DIR/$FILE"
  # Wait until file is written
    sleep 1
    if [ -f "$FULL_PATH" ]; then
        echo "=== New file detected: $FILE ==="
        cat "$FULL_PATH"
        # Rename file
        mv "$FULL_PATH" "$FULL_PATH.back"
    fi
done 


#service file
[Unit]
Description=Watch directory for new files
After=network.target
[Service]
Type=simple
User=root
ExecStart=/root/watch.sh
Restart=always
[Install]
WantedBy=multi-user.target
