#!/bin/bash

# Get ExpressVPN status
vpnstatus=`expressvpn status | grep -i connected | sed -e s/Connected\ to\ //g | sed 's/\x1B\[[0-9;]\{1,\}[A-Za-z]//g'`

echo $vpnstatus
