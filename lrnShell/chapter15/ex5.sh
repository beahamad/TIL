#!/bin/bash

# parameters
# $0 name of script
# $1/2/3... first second third... parameter
# $* all parameters
# $# number of arguments

echo "script name:" $0
echo "1st parameter:" $1
echo "2nd parameter:" $2
echo "3rd parameter:" $3
echo "all parameters:" $*
echo "number of arguments:" $#
echo ""
echo "that's all folks"
