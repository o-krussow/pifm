#!/bin/bash

cd /home/pi/music

for ((;;))
do
	SONG=$(ls -1 | shuf -n $(ls | wc -l))

	for i in $(echo $SONG | tr "\n" " "); do
    		/home/pi/pifm/pifm "$i" 87.9
	done		


	#/home/pi/pifm/pifm "${SONG}" 87.9
done
