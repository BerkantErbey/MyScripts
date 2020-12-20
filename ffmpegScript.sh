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


ls *.mp4 >>$input
ls *.webm >>$input


while read -r line
do

	audioCheck=$(ffprobe -i "$line" -show_streams 2>&1 | grep 'Stream #0:1' | wc -l)

	if [ $audioCheck -eq 0 ];
	then
		rm "$line"
	fi

done <$input

rm $input