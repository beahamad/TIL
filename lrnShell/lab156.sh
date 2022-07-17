#!/bin/bash

# Lab 15.6 - Arithmetic and Functions

OP=$1
NUM1=$2
NUM2=$3

err_msg() {
	echo "USAGE: $0 <MATH OPERATION> [-a, -s, -d, -m] <NUMBER> <NUMBER>
			-a: add
			-s: subtract
			-d: divide
			-m: multiply"
}

add() {
	echo "MATH OPERATION: ADD"
	echo "Method 1:"
	echo $(($NUM1+$NUM2))
	echo "Method 2:"
	let answer2=( $NUM1 + $NUM2 ); echo $answer2
	echo "Method 3:"
	echo $(expr $NUM1 + $NUM2)
}


subtract() {
	echo "MATH OPERATION: SUBTRACTION"
	echo "Method 1:"
	echo $(($NUM1-$NUM2))
	echo "Method 2:"
	let answer2=( $NUM1 - $NUM2 ); echo $answer2
	echo "Method 3:"
	echo $(expr $NUM1 - $NUM2)
}


divide() {
	echo "MATH OPERATION: DIVIDE"
	echo "Method 1:"
	echo $(($NUM1 / $NUM2))
	echo "Method 2:"
	let answer2=( $NUM1 / $NUM2 ); echo $answer2
	echo "Method 3:"
	echo $(expr $NUM1 / $NUM2)
}


multiply() {
	echo "MATH OPERATION: DIVIDE"
	echo "Method 1:"
	echo $(($NUM1 * $NUM2))
	echo "Method 2:"
	let answer2=( $NUM1 * $NUM2 ); echo $answer2
	echo "Method 3:"
	echo $(expr $NUM1 \* $NUM2)
}

if [ $# -ne 3 ]
then
	echo "ERROR: Wrong number of args."
	err_msg
	exit 0
fi


case $OP in
	-a) add;;
	-s) subtract;;
	-d) divide;;
	-m) multiply;;
	*) echo "ERROR: Invalid Option."; err_msg
esac
