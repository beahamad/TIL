#!/bin/bash

# if for files
# -e: existence of a file
# -x: check if its executable
# -d: check if its a directory
# -f: check if its a regular file
# -s: isEmpty
# -g: check if it has sgid set (set group id)
# -u: check if it has suid set (set user id)
# -r: readability
# -w: writable

# if a file exists
if [ -e ex1.sh ] 
then 
	echo "ex1.sh exists"
fi

# if a file is executable
if [ -x ex8.sh ]
then
	echo "ex8 is executable"
else
	echo "ex8 isn't executable"
fi

# if a file is a directory
if [ -d ex1.sh ]
then
	echo "ex1 is a directory"
else
	echo "ex1 isn't a directory"
fi

