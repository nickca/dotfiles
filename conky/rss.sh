#!/bin/bash
# This script will download the top 4 items from an RSS feed and format them

# This command alone will just output 4 formatted RSS items - the problem is items less than 54 chars
# need an extra newline... so we have to do all of this!
#wget -q -O - $1 | xmllint --xpath //item/title - | sed 's/<\/title><title>/\n/g' | sed -e 's/<\/\?title>//g' | sed -e 's/<\!\[CDATA\[//g' | sed -e 's/\]\]>//g' | sed -e 's/^/▶  /g' | head -n 4 | fmt -s -w 54 -g 50 | sed -e 's/^/     /g'

rsswhole=$(wget -q -O - $1 | xmllint --xpath //item/title - | sed 's/<\/title><title>/\n/g' | sed -e 's/<\/\?title>//g' | sed -e 's/<\!\[CDATA\[//g' | sed -e 's/\]\]>//g' | sed -e 's/^/▶  /g' | head -n 4)

# strip newlines
rsswhole=${rsswhole//[$'\t\r\n']}

# read string to array
IFS='▶'
rssarray=($rsswhole)

# format the rss string
rssfmt=""
i=0
for item in "${rssarray[@]}"
do
	:
	# the first line is empty so skip it
	i=$(($i+1))
	if [ "$i" == 1 ]
	then
		continue
	fi
	# get the char count
	wc=$(echo -n $item | wc -c)
	if (("$wc" <= 50))
	then
		# if it's less than 54 add an extra newline
		echo -ne "     ▶$item\n\n"
	else
		# otherwise format it to 52-56 chars
		#itemn=$(echo -ne "$item" | fmt -s -w 54 -g 50)
		echo -ne "     ▶$item" | fmt -s -w 54 -g 50
	fi
done
echo -ne $rssfmt
