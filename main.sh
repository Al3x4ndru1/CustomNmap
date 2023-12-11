#!/bin/bash

import="~/customnmap/netwokdiscovery.txt"

if ! [ -f "$import" ]
then

	touch get_ipaddress.sh
else
	cat "" > "$import"
fi

if [ ! -z $1 ]
then
	sudo ./get_ipaddress.sh "$1"

	wait -n
fi


# check if the nampscans exist, if exist make it empty
nmapscans="/home/kali/customnmap/nampscans.txt"

if ! [ -f "$nmapscans" ]
then
	touch nampscans.txt
else
	cat "" > "$nmapscans"
fi


# check if the nampscansudp exist, if exist make it empty
nmapscansudp="~/customnmap/nampscansudp.txt"

if ! [ -f "$nmapscansudp" ]
then
	touch nampscansudp.txt
else
	cat "" > "$nmapscansudp"
fi

while IFS= read -r line; do
	{ #try
		sudo ./get_nmap.sh "$line"

		#wait -n

		sudo ./nmapsearchudp.sh "$line"

		#wait -n

	} || { #catch
		continue
	}

done < "$import"
