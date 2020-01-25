#!/bin/bash -x

isPartTime=1
isFullTime=2
Max_Hrs_In_Month=10
Emp_Rate_Per_Hr=20
Num_Of_Working_Days=20
TotalWorkingDays=0

totalEmpHr=0

function getWorkingHours()
{
	case $1 in
		$isFullTime)
			empHr=8;;

		$isPartTime)
			empHr=4;;

		*)
			empHr=0;;
	esac
	echo $empHr
}

while [[ $totalEmpHr -lt $Max_Hrs_In_Month && $TotalWorkingDays -lt $Num_Of_Working_Days ]]
do

	((TotalWorkingDays++))
	empHr="$( getWorkingHours $((RANDOM%3)) )"
	totalEmpHr=$(($totalEmpHr+$empHr))
done

totalSalary=$(( $totalEmpHr*$Emp_Rate_Per_Hr ));
