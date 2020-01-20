#!/bin/bash -x

max=100
min=999
for value in {1..5}
do
	randomValue=$((RANDOM%900+100))

	if [ $randomValue -gt  $max ]
	then
		max=$randomValue
	fi

	if [ $randomValue -lt $min ]
	then
		min=$randomValue
	fi
done
echo Minimum Value=$min
echo Maximum Value=$max
