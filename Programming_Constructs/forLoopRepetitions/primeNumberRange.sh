#!/bin/bash -x

read -p "Enter start of range: " start
read -p "Enter end of range: " end

isPrime=0;

for (( i=start; i<=end; i++ ))
do
	for (( j=2; j<=i/2; j++ ))
	do
		temp=$(( i % j ))
		if [ $temp -eq 0 ]
		then
			isPrime=0;
		fi
	done

	if [ $isPrime -eq 1 ]
	then
		echo $i
	fi
done
