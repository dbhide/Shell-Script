#!/bin/bash -x

array=(1 4 -8 4 -1 0)
length=${#array[@]}
for ((i=0;i<$length-2;i++))
do
	for ((j=$i+1;j<$length-1;j++))
	do
		for ((k=$j+1;k<$length;k++))
		do
			if [ $((${array[i]}+${array[j]}+${array[k]})) -eq 0 ]
			then
				echo Triplets are ${array[i]} ${array[j]} ${array[k]}
			fi
		done
	done
done
