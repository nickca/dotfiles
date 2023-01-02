#!/bin/sh

if [ "$DESKTOP_SESSION" = "i3" ]; then 
   sleep 20s
   killall conky
   cd "$HOME/.conky/nickca_clockrss"
   conky -c "$HOME/.conky/nickca_clockrss/nickca_clockrss" &
   exit 0
fi
