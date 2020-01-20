#!/bin/bash -x

read -p "Enter Month: " month
read -p "Enter Date: " date
read -p "Enter Year: " year

y1=$(($year-(14-$month)/12))
x=$(($y1+($y1/4)-($y1/100)+($y1/400)))
m1=$(($month+12*((14-$month)/12)-2))
d1=$((($date+$x+31*$m1/12)%7))

echo $d1

res=$d1
case "$res" in

	#case 1
	"0") echo "Sunday" ;;

	#case 2
   "1") echo "Monday" ;;

	#case 3
   "2") echo "Tuesday" ;;

	#case 4
   "3") echo "Wednesday" ;;

	#case 5
   "4") echo "Thursday" ;;

	#case 6
   "5") echo "Friday" ;;

	#case 7
   "6") echo "Saturday" ;;
esac

