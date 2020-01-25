#!/bin/bash -x

n="$1"
power=1
i=0
while [ $i -lt $n ]
do
	power=$(( 2*power ))
	echo $power
	i++
done
