#!/bin/bash -x
isPartTime=1
isFullTime=2
empRatePerHr=20
numOfWorkingDays=20
maxRateInMonth=100

totalEmpHr=0
totalWorkingDays=0
while [[ $totalEmpHr -lt $maxRateInMonth && $totalWorkingDays -lt $numOfWorkingDays ]]
do
        ((totalWorkingDays++))
	randomCheack=$((RANDOM%3))
        case $randomCheack in
                                $isPartTime )
                                        empHrs=4
                                ;;
                                $isFullTime )
                                        empHrs=8
                                ;;
                                *)
                                        empHrs=0
                                ;;
        esac
	totalSalary=$(($totalEmpHr*$empRatePerHr))
        totalEmpHr=$(($totalEmpHr+$empHrs))
done
