#!/bin/bash

# Partitioning a string
# In this example I'll try to make a simple email address validator
# using regex and dividing an address in parts.

declare -a EmailDomains=("gmail.com" \
			 "yahoo.com.br" \
			 "bol.com.br" \
			 "outlook.com" \
			 "hotmail.com" \
			 "icloud.com")


echo "Type an email address:"
read email

DOMAIN=${email#*@}

check_domain() {
	OK=0
	for valid in ${EmailDomains[@]}; do
		if [ $valid == $DOMAIN ]
		then
			echo
			echo "SUCCESS: Valid email address"
			OK=$(( $OK + 1 ))
		fi
	done
	
	if [ $OK -eq 0 ]
	then
		echo "ERROR: Not a valid domain"
	fi

	exit $OK
}

case "$email" in
	*[^:space:\&%#!?=+]@*) check_domain;;
	* )  echo "ERROR: Please type a valid email address";;
esac
		
