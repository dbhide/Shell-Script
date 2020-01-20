#!/bin/bash -x

fact=1
read -p "Enter Number: " number

for (( i=1; i<=$number; i++ ))
do
	fact=$((fact * i))
done

printf "Factorial of $number is: $fact"
