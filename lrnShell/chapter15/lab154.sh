#!/bin/bash

# environment variables

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'
RETURN_OK=0

error_msg() {
	echo -e "${RED}ERROR: Unexpected input. Try again typing 1 or 2 ${NC}"
}

echo "CHOOSE 1 FOR YES OR 2 FOR NO:"
read number

if [ $number -eq 1 ] 
then
	export KITUT="YES!!!!!"
elif [ $number -eq 2 ] 
then
	export KITUT="NOOOOOOOOOOOO"
else
	export KITUT="FCKN DO IT AGAIN"
	error_msg
	RETURN_OK=1	
fi

echo -e "${GREEN}The value of KITUT is: $KITUT ${NC}"
exit $RETURN_OK
