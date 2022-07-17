#!/bin/bash

# Lab 16.1: String Tests and Operations

echo "Please, type the first string:"
read str1
echo "Please, type the second string:"
read str2

LEN1=${#str1}
LEN2=${#str2}

echo
echo "First String Lenght: " $LEN1
echo "Second String Lenght: " $LEN2
echo

if [[ -z $str1 || -z $str2 ]]
then
	echo "ERROR: One of the strings is empty, please try again"
else
	if [[ $LEN1 -gt $LEN2 ]]
	then
		echo "FIRST STRING > SECOND STRING"
	elif [[ $LEN2 -gt $LEN1 ]]
	then
		echo "SECOND STRING > FIRST STRING"
	else
		echo "FIRST STRING HAS SAME SIZE AS THE SECOND ONE"
	fi


	if [[ $str1 == $str2 ]]
	then
		echo "EQUAL STRINGS"
	else
		echo "DIFFERENT STRINGS"
	fi
fi
