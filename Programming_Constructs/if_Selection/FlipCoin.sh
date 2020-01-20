#!/bin/bash -x

coinCheck=1;
randomFlip=$((RANDOM%2));

if [ $coinCheck -eq $randomFlip ]
then
	echo "Heads!!"
else
	echo "Tails!!"
fi
