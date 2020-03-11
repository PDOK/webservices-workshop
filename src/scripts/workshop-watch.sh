#!/usr/bin/env bash
WORKSHOP_FILE="./src/WORKSHOP.md"
while inotifywait -e close_write "$WORKSHOP_FILE"; do cp -r src/images docs/ && pandoc --number-sections -c pandoc.css "$WORKSHOP_FILE" -o docs/index.html; done