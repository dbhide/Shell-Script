#!/bin/bash -x

read -p "Enter Year to check: " year

if [ $year -gt 1000 ] && [ $year -le 9999 ]
then
	if [ $(($year%4)) -eq 0 ] && [ $(($year%100)) -ne 0 1 ] || [ $(($year % 400)) -eq 0 ]
	then
		echo "$year is a Leap Year!!"
	else
		echo "$year is not a Leap Year"
	fi
else
	echo "$year is not a Leap Year"
fi
