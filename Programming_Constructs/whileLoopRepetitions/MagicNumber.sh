#!/bin/bash -x

read -p "Enter number: " num

high=100
low=1
mid=$(($high+$low/2))

while [ $first -le $last ]
do
	if [ $mid -lt $num ]
	then
		first=$((mid+1))
	elif [ mid -eq number ]
		echo $num
		break
	else
		last=$((mid-1))
	fi
	mid=$(((first+last)/2))
done
if [ $first -gt $last ]
then
	echo "No Number"
fi
