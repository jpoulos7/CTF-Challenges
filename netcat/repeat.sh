#!/bin/bash

echo Repeat after me...
echo but make sure you\'re quick!

count=0
while [ $count -le 500 ]
do

i=$((5000 + RANDOM % 500000))

echo Value: $i
printf "Repeat: "

read val

if [ "$val" = "$i" ]
then
	count=$(( $count + 1 ))
else
	exit 0
fi

if [ $count = 499 ]
	then
	echo flag: FLAG
	exit 0
fi

done
