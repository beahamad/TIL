#!/bin/bash

# Functions

msg_1() {
	echo "Msg 1: alfafa"
}

msg_2() {
	echo "Msg 2: the path for home directory is" $HOME
}

msg_3() {
	echo "Msg 3: the content of current directory: "; ls
}

case $1 in
	1) msg_1 ;;
	2) msg_2 ;;
	3) msg_3 ;;
	*) echo "Invalid option. USAGE: $0 <OPTION> [1, 2, 3]";;

esac

