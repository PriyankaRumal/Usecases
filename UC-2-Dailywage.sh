#!/bin/bash -x

ispresent=1
randomcheack=$((RANDOM%2))

if [ $ispresent -eq $randomcheack ]
then
	empRatePerHR=20
	empHrs=8
	salary=$(($empRatePerHR*$empHrs))
else
	salary=0
fi

echo "Daily Wage:" $salary
