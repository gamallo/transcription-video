#!/bin/bash

file=$1

NAME=$(echo "$file" | sed -E 's/(.*).mp4/\1/')
language=$2

echo $NAME

ffmpeg -i $NAME".mp4" -vn -acodec libmp3lame -q:a 4 $NAME".mp3"

ffmpeg -i $NAME".mp3" -vn -ab 320k -ar 44100 -y $NAME"_edit.mp3"

python3 transcript.py $NAME $language

ffmpeg -i $NAME".mp4" -vf subtitles=output-medium/$NAME"_edit.srt" $NAME"_srt.mp4"
