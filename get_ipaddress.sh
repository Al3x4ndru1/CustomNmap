#$!/bin/bash

if [ ! -z $1 ]
then

	nmap -sP -PE $1 | grep report | awk -F' ' '{print $5}' > netwokdiscovery.txt

fi
