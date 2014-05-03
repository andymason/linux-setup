#!/bin/bash
BITRATE="650k"
FILENAME=`basename "$1" .mp4`

ffmpeg -i "$1" -threads 4 -codec:v libx264 -preset slower -profile:v baseline -b:v "$BITRATE" -pass 1 -an -f mp4 -y /dev/null
ffmpeg -i "$1" -threads 4 -codec:v libx264 -preset slower -profile:v baseline -b:v "$BITRATE" -pass 2 -codec:a libfdk_aac -b:a 128k "$FILENAME"_"$BITRATE".mp4

ffmpeg -i "$1" -threads 4 -codec:v libvpx -b:v "$BITRATE" -codec:a libvorbis -q:a 4 -f webm -y /dev/null
ffmpeg -i "$1" -threads 4 -codec:v libvpx -b:v "$BITRATE" -codec:a libvorbis -q:a 4 -f webm "$FILENAME"_"$BITRATE".webm

ffmpeg -i "$1" -vf "thumbnail" -f image2 -vframes 1 "$FILENAME"_thumb.jpg
