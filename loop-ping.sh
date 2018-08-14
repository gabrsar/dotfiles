#!/bin/bash

touch "$1"
echo ""
echo "Starting at $(date -Iseconds)"
while true
do 
	if [ ! -f "$1" ];	then
		echo ""
		echo "Finishing at $(date -Iseconds)"
		exit
	fi

	echo ""
	echo "Starting new ping at $(date -Iseconds)"
		
	ping www.uol.com.br | while read pong
	do 
		echo "$(date -Iseconds): $pong"; 
	done
done

