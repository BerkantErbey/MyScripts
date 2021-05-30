#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "Kullanım:./wgetThis downloadList.txt path"
    exit
fi


cd $2


while read -r line
do
	aria2c $line
done <$1

rm $1