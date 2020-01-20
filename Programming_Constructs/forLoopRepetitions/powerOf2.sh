#!/bin/bash -x

#read -p "Enter value of N: " n

n="$1"
power=1
for (( i=0; i<=$n; i++ ))
do
	power=$(( 2*power ))
	echo $power
done
