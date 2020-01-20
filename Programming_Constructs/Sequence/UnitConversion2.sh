#!/bin/bash -x


meter=`echo "scale=2; (60/3.2808)*(40/3.2808)" | bc`
echo $meter
