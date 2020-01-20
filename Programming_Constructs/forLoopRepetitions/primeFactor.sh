#!/bin/bash -x

read -p "Enter number: " number

x=number

for (( i=2; i<$x; i++ ))
do
	if [ $(($x%$i)) == 0 ]
	then
		echo $i
		x=$(($x/$i))
	fi
done

if [ $x > 2 ]
then
	echo $x
fi
