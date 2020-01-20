#!/bin/bash -x

meter=`echo "scale=2; (60/3.2808)*(40/3.2808)" | bc`
acre=`echo "scale=2; $meter/4047" | bc`
echo $acre
area25=`echo "scale=2; $acre*25" | bc`
echo $area25

