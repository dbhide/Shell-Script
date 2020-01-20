#!/bin/bash -x

isPrime=1
read -p "Enter number: " number
for (( i=2; i<=$number/2; i++ ))
do
	temp=$(( number % i ));
	if [ $temp -eq 0 ]
	then
		isPrime=0;
	fi
done
if [ $isPrime -eq 1 ]
then
	echo "$number is a Prime Number."
else
	echo "$number is not a Prime Number."
fi
