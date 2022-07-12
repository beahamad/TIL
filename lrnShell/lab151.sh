#!/bin/bash

# ls for a non-existent file and show it's return
ls alfafa.txt
echo "status:" $?

# ls for an existent file and it's return
touch alfafa.txt
ls alfafa.txt
echo "status:" $?

# remove random alfafa
rm alfafa.txt
