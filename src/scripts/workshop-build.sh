#!/usr/bin/env bash
WORKSHOP_FILE="src/WORKSHOP.md"
cp -r src/images docs/
title=$(pcregrep -o1 '^<\!--\sTITLE:\s(.*)\s-->' "$WORKSHOP_FILE" | head -n1)
pandoc --number-sections -c pandoc.css "$WORKSHOP_FILE" -o docs/index.html --metadata title="$title"
