#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
randomCheack=$((RANDOM%3))

if [ $isFullTime -eq $randomCheack ]
then
	empHr=8
elif [ $isPartTime -eq $randomCheack ]
then
	empHr=9
else
	empHr=0
fi
sallary=$(( $empRatePerHr * $empHr ))
echo $sallary


