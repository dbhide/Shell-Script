#!/bin/bash -x

choice=$((RANDOM%4))
choice1=1;
choice2=2;
choice3=3;
choice4=4;
#echo "Enter your choice for Conversion" choice
echo "1- Feet to Inch"
echo "2- Feet to Meter"
echo "3- Inch to Feet"
echo "4- Meter to Feet"
echo "Enter your choice for Conversion" choice
case $choice in
	$choice1)
		read -p "Enter Value: " value
		inch=`echo "scale=2; $value*12" | bc`;;

	$choice2)
		read -p "Enter Value: " value
      meter=`echo "scale=4; $value/3.2808" | bc`;;

	$choice3)
		read -p "Enter Value: " value
      feet=`echo "scale=2; $value/12" | bc`;;

	$choice4)
		read -p "Enter Value: " value
      feet=`echo "scale=4; $value*3.2808" | bc`;;
esac



