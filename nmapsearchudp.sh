#!/bin/bash

if ! [ -z $1 ]
then
	echo "$1"
	sudo nmap -sU -T4 "$1" >> nampscansudp.txt
	cat "\n" >> nampscansudp.txt

fi
