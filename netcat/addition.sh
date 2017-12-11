#!/bin/bash

count=0
while [ $count -le 10000 ]
do
i=$((0 + RANDOM % 10))
j=$((0 + RANDOM % 10))

echo $i + $j =
read answer
temp=$(( $i + $j ))
if [ "$answer" = "$temp" ]
then
count=$(( $count + 1 ))
else
exit 0
fi

if [ $count = 9999 ]
then
echo flag: FLAG
exit 0
fi

done
