#!/bin/bash

# Source: https://friendo.monster/log/gemini_first.html
# Requires pandoc to work

find . -mtime -1 -iname "*.gmi" -exec sh -c 'for f do cat head.html > $(echo "$f" | sed 's/\.gmi/.html/g'); cat "$f" | sed "/[^[:space:]]$/{$!{N;s/\([^[:space:]]\)\n=> /\1  \n=> /;ty;P;D;:y}}" | sed -e "s/^=> \([^[:space:]]*\) \+\([^[:space:]].*\)/[\2](\1)<br \/>/g" -e "s/^=> \([^[:space:]].*\)/[\1](\1)/" -e "s/\(\[.*\]\)\(([^:]*\)\.gmi)/\1\2.html)/g" | pandoc | sed -e "s/<a href=\"gemini:/<a class=\"gem\" href=\"gemini:/g" >>  $(echo "$f" | sed 's/\.gmi/.html/g'); cat tail.html >> $(echo "$f" | sed 's/\.gmi/.html/g');done' sh {} \;