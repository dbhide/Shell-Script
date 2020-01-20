#!/bin/bash -x

read -p "Enter Value of a: " a
read -p "Enter Value of b: " b
read -p "Enter Value of c: " c

op1=$(( $a + $b * $c))
op2=$(( $a % $b + $c))
op3=$(( $c + $a / $b))
op4=$(( $a * $b + $c))

if [[ $op1 -gt $op2 && $op1 -gt $op3 && $op1 -gt $op4 ]]
then
	echo max=$op1

	elif [[ $op2 -gt $op1 && $op2 -gt $op3 && $op2 -gt $op4 ]]
	then
		echo max=$op2

	elif [[ $op3 -gt $op1 && $op3 -gt $op2 && $op3 -gt $op4 ]]
	then 
   	echo max=$op3

else
	echo max=$op4
fi


if [[ $op1 -lt $op2 && $op1 -lt $op3 && $op1 -lt $op4 ]]
then
   echo min=$op1

   elif [[ $op2 -lt $op1 && $op2 -lt $op3 && $op2 -lt $op4 ]]
   then
      echo min=$op2

   elif [[ $op3 -lt $op1 && $op3 -lt $op2 && $op3 -lt $op4 ]]
   then 
      echo min=$op3

else
   echo min=$op4
fi
