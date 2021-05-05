#!/bin/bash

# Source: https://friendo.monster/log/gemini_first.html
# Requires pandoc to work

find . -mtime -1 -iname "*.gmi" -exec sh -c 'for f do cat head.txt > $(echo "$f" | sed 's/\.gmi/.html/g'); cat "$f" | sed -e "s/^=> \([^[:space:]]*\) \+\([^[:space:]].*\)/[\2](\1)<br \/>/g" -e "s/^=> \([^[:space:]].*\)/[\1](\1)/" -e "s/\(\[.*\]\)\(([^:]*\)\.gmi)/\1\2.html)/g" | pandoc >>  $(echo "$f" | sed 's/\.gmi/.html/g'); cat tail.txt >> $(echo "$f" | sed 's/\.gmi/.html/g');done' sh {} \;
