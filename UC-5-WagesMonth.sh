#!/bin/bash -x
isPartTime=1
isFullTime=2
empRatePerHr=20
numOfWorkingDays=20
totalSalary=0

for (( day=1; day<=$numOfWorkingDays; day++ ))
do
	randomCheack=$((RANDOM%3))
	case $randomCheack in
				$isFullTime )
					empHrs=8
				;;
				$isPartTime )
					empHrs=4
				;;
				*)
					empHrs=0
				;;
	esac
	Salary=$(($empHrs*$empRatePerHr))
	totalSalary=$(($totalSalary+$Salary))
done
	echo "Salary:" $Salary
	echo "totalSalary:" $totalSalary
