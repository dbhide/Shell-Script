#!/bin/bash -x
read -p "Enter number: " number
j=1
x=number

for (( i=2; i<$x; i++ ))
do
	if [ $(($x%$i)) == 0 ]
	then
		echo $i
		x=$(($x/$i))
		arr[$j]=$i
		j=$(($j+1))
	fi
done

if [ $x > 2 ]
then
	echo $x
	arr[$j]=$x
	j=$(($j+1))
fi
echo ${arr[@]}
