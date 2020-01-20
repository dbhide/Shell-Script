#!/bin/bash -x

var1=100
var2=10
if [ $var1 -gt $var2 ]
then
	echo "$var1 is greater than to $var2"
else
	echo "$var1 is less than $var2"
fi
