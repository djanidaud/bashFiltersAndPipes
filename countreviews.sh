#!/bin/bash

FOLDER=$1

if [ -d $FOLDER ]
then
	cd $FOLDER
	LIST=$(ls *.dat)
	
	for HOTEL in $LIST
	do
		NAME=${HOTEL%.dat}
		echo "$NAME $(grep -o "<Author>" $HOTEL | wc -w)"
	
	done | sort -k 2 -n -r
fi
