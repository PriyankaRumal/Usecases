#!/bin/bash -x

ispresent=1
randomcheack=$((RANDOM%2))

if (( $ispresent == $randomcheack ))
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi
