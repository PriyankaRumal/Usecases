#!/bin/bash -x
PartTime=1
FullTime=2
empRatePerHr=20
randomCheack=$((RANDOM%3))
case $randomCheack in
			$PartTime)
				empHr=4
			;;
			$FullTime)
				empHr=8
			;;
			*)
				empHr=0
			;;
esac
salary=$(($empHr*$empRatePerHr))
echo $salary
