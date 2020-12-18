#!/bin/bash

# list of ips to ping(droplets)
IPS='dl01 dl02 dl03 dl04 dl05 dl06 dl07 dl08 dl09 dl10 dl11'

# iterate for each ip(droplet)
for IP in $IPS ; do
	# ping the ip and send results to be discarded
	ping -c 1 -t 1 $IP >/dev/null
	# if alive echo alive, else, echo dead
	if [ $? -eq 0 ] ; then
		echo "$IP : alive"
	else
		echo "$IP : dead"
	fi
done

exit 0 
