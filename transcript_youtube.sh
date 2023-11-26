#!/bin/bash

link=$1

YOUTUBE=$(echo "$link" | sed -E 's/(https:\/\/www\.youtube\.com\/watch\?v=).*/\1/')
NAME=$(echo "$link" | sed -E 's/https:\/\/www\.youtube\.com\/watch\?v=(.*)/\1/')

#YOUTUBE="https://www.youtube.com/watch?v="
#NAME="AJhkLwMvgrg"
language=$2

FILE=$YOUTUBE""$NAME


yt-dlp -x -f bestaudio --audio-format mp3 -o "%(id)s.%(ext)s" $FILE 

ffmpeg -i $NAME".mp3" -vn -ab 320k -ar 44100 -y $NAME"_edit.mp3"

yt-dlp -S res,ext:mp4:m4a --recode mp4  $FILE -o $NAME.mp4

#python3 transcript.py $NAME $language

ffmpeg -i $NAME".mp4" -vf subtitles=output-medium/$NAME"_edit.srt" $NAME"_srt.mp4"
