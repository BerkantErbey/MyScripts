#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "Kullanım:./ffmpegScript inputPath"
    exit
fi

input="fileList"


cd "$1"

for oldname in * 
do
	newname=`echo $oldname | sed -e 's/ /_/g'`; mv "$oldname" "$newname";
done

rm *.gif
ls *.mp4 *.webm >>$input

while read -r line
do
	audioCheck=$(ffprobe -i "$line" -show_streams 2>&1 | grep 'Stream #0:1' | wc -l)
	#ffprobe -v error -select_streams v:0 -show_entries stream=width,height -of csv=p=0 input.mp4
	height=$(ffprobe -i "$line" -v error -select_streams v:0 -show_entries stream=width,height -of csv=p=0 | cut -d "," -f 1)
	width=$(ffprobe -i "$line" -v error -select_streams v:0 -show_entries stream=width,height -of csv=p=0 | cut -d "," -f 2)

	#echo $line "=" $width "x" $height 

	let dimension=$(($height * $width))
	#echo "dimension " $dimension

	if [ $audioCheck -eq 0 ];
	then
		rm "$line"
	else
		if [ 921600 -gt $dimension ];
		then
			rm "$line"
		fi
	fi

done <$input

rm $input


