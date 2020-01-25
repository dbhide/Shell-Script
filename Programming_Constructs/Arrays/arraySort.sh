#!/bin/bash -x

for((i=0;i<10;i++))
do
	num[$i]=$((RANDOM%900 + 100))
done

for((i=0;i<10;i++))
do
	for((j=i;j<10-i-1;j++))
	do
		if [[ ${num[j]} -gt ${num[$((j+1))]} ]]
		then
			temp=${num[j]}
			num[j]=${num[$((j+1))]}
			num[$((j+1))]=$temp
		fi
	done
done

printf "\n"
echo ${num[@]}
