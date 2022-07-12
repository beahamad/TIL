#!/bin/bash

# if statement
# = is -eq
# exit != 0 > means failure

if [ $# -eq 0 ]; then
	echo "USAGE: $0 arg"
	exit 1
fi
echo $1
exit 0
