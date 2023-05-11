#!/bin/bash
#PARAMS=('-m 6 -q 80 -mt -af -progress') // alternatif ayarlar
PARAMS=('-m 6 -metadata all -preset photo -q 75 -mt -af -progress')

if [ $# -ne 0 ]; then
	PARAMS=$@;
fi

cd "$(pwd)"
mkdir webp

shopt -s nullglob nocaseglob extglob

for FILE in *.@(jpg|jpeg|tif|tiff|png); do 
    cwebp $PARAMS "$FILE" -o "./webp/${FILE%.*}".webp;
done
