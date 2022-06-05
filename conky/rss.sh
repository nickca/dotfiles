#!/bin/bash
wget -q -O - $1 | xmllint --xpath //item/title - | sed 's/<\/title><title>/\n/g' | sed -e 's/<\/\?title>//g' | sed -e 's/<\!\[CDATA\[//g' | sed -e 's/\]\]>//g' | sed -e 's/^/▶  /g' | head -n 4 | fmt -s -w 50 -g 50
