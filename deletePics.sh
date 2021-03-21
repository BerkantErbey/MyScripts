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


ls *.jpg *.jpeg *.png *.tiff >>$input
#ls  >>$input


while read -r line
do
	height=$(ffprobe -i "$line" -v error -select_streams v:0 -show_entries stream=width,height -of csv=p=0 | cut -d "," -f 1)
	width=$(ffprobe -i "$line" -v error -select_streams v:0 -show_entries stream=width,height -of csv=p=0 | cut -d "," -f 2)

	let dimension=$(($height * $width))

	if [ 2073600 -gt $dimension ];
	then
		rm "$line"
	fi
done <$input

rm $input
