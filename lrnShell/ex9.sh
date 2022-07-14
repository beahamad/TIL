#!/bin/bash

# if for numericals
# -eq: ==
# -ne: !=
# -gt: >
# -lt: <
# -ge: >=
# -le: <=

NUMBER=$1

if [ $NUMBER -ge 50 ]
then
	echo "equal or greater 50"
elif [ $NUMBER -lt 50 ]
then
	echo "less than 50"
fi
