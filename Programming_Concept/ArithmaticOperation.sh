#!/bin/bash -x

read -p "Enter first number: " a
read -p "Enter second number: " b
read -p "Enter third number: " c
op1=$(( $a+$b*$c ))
echo $op1
op2=$(( $a%$b+$c ))
echo $op2
op3=$(( $c+$a/$b ))
echo $op3
op4=$(( $a*$b+$c ))
echo $op4
