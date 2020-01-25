#!/bin/bash 

for((i=0;i<10;i++))
do
   num[$i]=$((RANDOM%900 + 100))
done

#To find second smallest number in array
first=${num[0]}
second=${num[0]}

#echo $first
#echo $second
for((i=0;i<10;i++))
do
   if [ ${num[i]} -lt $first ]
   then
      second=$first
      first=${num[i]}

   elif [ ${num[i]} -lt $second ]
   then
      second=${num[i]}
   fi
done
printf "\n"
echo ${num[@]}
echo "Second smallest number is: $second"


#To find second largest number in array
f=${num[0]}
s=${num[0]}

#echo $f
#echo $s
for((i=0;i<10;i++))
do
   if [ ${num[i]} -gt $f ]
   then
      s=$f
      f=${num[i]}

   elif [ ${num[i]} -gt $s ]
   then
      s=${num[i]}
   fi
done
printf "\n"
echo ${num[@]}
echo "Second largest number is: $s"

