#!/bin/bash
readarray -t LINES < names.txt
for LINE in "${LINES[@]}"; do
echo "$LINE"

convert -font Arial -background '#0008' -fill white -gravity center -size 4000x1000 \
          caption:"$LINE" \
          bg.png +swap -gravity East -composite "$LINE"_out.jpg
done

