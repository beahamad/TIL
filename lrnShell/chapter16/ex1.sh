#!/bin/bash

# String operators
# [[ str1 > str2 ]]: compares the sorting order of str1 and str2
# [[ str1 == str2 ]]: compares the characters in str1 and str2
# len1=${#str1}: saves the lenght of str1 in the variable len1

# Examples:

echo "Write two sentences below:"
echo "Sentence 1: "
read str1
echo "Sentece 2: "
read str2

if [[ $str1 == $str2 ]]
then
	echo
	echo "Same content."
else
	echo
	echo "Different content."
fi

len1=${#str1}
len2=${#str2}

if [[ len1 -gt len2 ]]
then
	echo "Sentence 1 > Sentence 2"
elif [[ len2 -gt len1 ]]
then
	echo "Sentence 2 > Sentence 1"
else
	echo "Sentence 1 same size as Sentence 2"
fi

