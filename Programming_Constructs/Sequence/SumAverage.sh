#!/bin/bash -x

for num in {1..5}
do
	ran=$((RANDOM%100))
	echo $ran
	sum=$(( $sum+$ran ))
done
avg=$(( $sum/5 ))
echo "Sum of 5 Random numbers is : " $sum
echo "Average of 5 Random numbers is :" $avg
