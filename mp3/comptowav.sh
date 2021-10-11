#!/bin/bash

for file in *.mp3; do  ffmpeg -i "$file" -f s16le -ar 22.05k -ac 1 - > ../music/"${file%.mp3}".wav; done

