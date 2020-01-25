#!/bin/bash -x

#Function to check prime number

isPrime=1
read -p "Enter number: " number

function checkPrime()
{
	num=$1
	for (( i=2; i<=$num/2; i++ ))
	do
		temp=$(( num % i ));
		if [ $temp -eq 0 ]
		then
			isPrime=0;
		fi
	done
	echo $isPrime
}

prime="$( checkPrime $number)"
if [ $prime -eq 1 ]
then
	echo "$number is a Prime Number."
else
	echo "$number is not a Prime Number."
fi

#Function to check palindrome
temp=$number
function checkPalindrome()
{
	reverse=0
	r=0
	while [ $number -ne 0 ]
	do
		r=$(($number%10))
		reverse=$(($reverse*10+$r))
		num=$(($number/10))
	done
	echo $reverse
}

result="$( checkPalindrome $number)"
if [ $temp -eq $result ]
then
	echo "Is Palindrome"
else
	echo  "Is not Palindrome"
fi
