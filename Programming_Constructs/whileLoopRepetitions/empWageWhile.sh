#!/bin/bash -x

isPartTime=1
isFullTime=2
Max_Hrs_In_Month=10
Emp_Rate_Per_Hr=20
Num_Of_Working_Days=20

TotalEmpHr=0;
TotalWorkingDays=0

while [[ $TotalEmpHr -lt $Max_Hrs_In_Month && $TotalworkingDays -lt $Num_Of_WorkingDays ]]
do

	(( TotalWorkingDays++ ))
	empCheck=$((RANDOM%3))
	case $empCheck in
		$isFullTime)
			empHrs=8;;

		$isPartTime)
			empHrs=4;;

		*)
			empHrs=0;;
esac

totalEmpHrs=$(($TotalEmpHr+empHrs));
done

totalSalary=$(($TotalEmpHr+$Num_Of_Working_Days))
