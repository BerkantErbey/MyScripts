#!/bin/bash




ls $1/*.mp4 >list.txt




case $2 in

1)
	# Mode1
	while read -r line;
	do
		b3sum $line >$line.b3
	done < list.txt
	;;
2)
	# Mode2
	while read -r line;
	do
		b3sum -c $line.b3
	done < list.txt
	;;
esac

#rm list.txt -v
echo "THE END"

