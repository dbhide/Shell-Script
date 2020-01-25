#!/bin/bash -x


temp=$num
isPrime=1
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
	prime="$( checkPrime $number)"
	if [ $prime -eq $result ]
	then
   	echo "Is Palindrome and also Prime"
	fi
else
   	echo  "Is not Palindrome"
fi


#PRIME FUNCTION
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

