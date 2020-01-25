#!/bin/bash -x

for((i=0;i<10;i++))
do
	num[$i]=$((RANDOM%900 + 100))
done

first=${num[0]}
second=${num[0]}

echo $first
echo $second
for((i=0;i<10;i++))
do
	if [ ${num[i]} -gt $first ]
	then
		second=$first
		first=${num[i]}

	elif [ ${num[i]} -gt $second ]
	then
		second=${num[i]}
	fi
done
printf "\n"
echo ${num[@]}
echo $second
