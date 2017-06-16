#!/bin/bash
readarray -t LINES < names.txt
for LINE in "${LINES[@]}"; do
echo "$LINE"
convert -font Arial -pointsize 500 -size 4000x1000 xc:none -gravity center -stroke black -strokewidth 20 -annotate 0 "$LINE" -background none -shadow 100x30+0+0 +repage -stroke none -fill white -annotate 0 "$LINE" bg.png +swap -gravity East -geometry +0-3 -composite  "$LINE"_out.jpg
done

