#!/bin/bash

# chaining operations

# 3 in a roll no matter what
echo "it succeeds"; ls alfafa.txt ; echo "alfafa successfully ignored"

# space between results
echo ""

# 3 in a roll but fails with alfafa
echo "it succeeds, unless:" && ls alfafa.txt && echo "you'll never read this"

#space to know where i am
echo ""

# 3 in a roll but i didn't understood well this fella
echo "ok lets try" || ls alfafa.txt || echo "don't know if i'll read this"

# pipe != chaining
# pipe catchs the result from a previous command based in data streams and
# do the next command which is an data stream command too
