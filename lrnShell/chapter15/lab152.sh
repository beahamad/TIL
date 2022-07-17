#!/bin/bash

# Lab 15.2

# q1)
echo "ENTER A NAME FOR A DIRECTORY:"
read namedir
mkdir $namedir
cd $namedir
echo "DIRECTORY CREATED: " && pwd

touch file1 file2 file3 file4
ls -l
echo "SAY SOMETHING FOR FILE 1"
read somesht1
echo $somesht1 >> file1
echo "SAY SOMETHING FOR FILE 2"
read somesht2
echo $somesht2 >> file2

echo ""
cat file1 file2
ls ..
rm -rf ../$namedir
echo ""
ls ..
echo ""
echo "see you space cowgirl"
