#!/bin/bash -x

read -p "Enter Number: " num
temp=$num
function checkPalindrome()
{
	reverse=0
	r=0
	while [ $num -ne 0 ]
	do
		r=$(($num%10))
		reverse=$(($reverse*10+$r))
		num=$(($num/10))
	done
	echo $reverse
}

result="$( checkPalindrome $num)"
if [ $temp -eq $result ]
then
	echo "Is Palindrome"
else
	echo  "Is not Palindrome"
fi
