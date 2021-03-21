#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "Kullanım:./bashProcess inputPath"
    exit
fi




cd "$1"
input="out.txt"


while read -r line
do

	/home/berkant/Desktop/MyScripts/deleteSilentVideos.sh "$line"

done <$input

rm $input