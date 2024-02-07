#!/bin/bash
#PARAMS=('-m 6 -q 80 -mt -af -progress') // alternatif ayarlar
PARAMS=('-m 6 -metadata all -preset photo -q 25 -mt -af -progress')

if [ $# -ne 0 ]; then
    PARAMS=$@;
fi

cd "$(pwd)"
mkdir -p compressed
mkdir -p webp

shopt -s nullglob nocaseglob extglob

for FILE in *.@(jpg|jpeg|tif|tiff|png); do 
    COMPRESSED_FILE="./compressed/compressed-$FILE"
    convert "$FILE" -quality 35% "$COMPRESSED_FILE"
done

cd compressed;

for FILE in *.@(jpg|jpeg|tif|tiff|png); do 
    cwebp $PARAMS "$FILE" -o "../webp/${FILE%.*}".webp;
done