#!/bin/bash

if [ ! -z $1 ]
then
	sudo nmap -sS -T4 "$1" >> nampscans.txt
	cat "\n" >> nampscans.txt
fi
