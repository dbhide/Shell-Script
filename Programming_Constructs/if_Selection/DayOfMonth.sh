#!/bin/bash -x

read -p "Enter Day: " day
read -p "Enter Month: " month

if [ $month == 'March' ] && [ $day -ge 20 ] && [ $day -le 31 ]
then
	echo True 
fi

if [ $month == 'April' ] && [ $day -le 30 ]
then
	echo True
fi

if [ $month == 'May' ] && [ $day -le 31 ]
then
	echo True
fi

if [ $month == 'June' ] && [ $day -le 20 ]
then
	echo True
fi

