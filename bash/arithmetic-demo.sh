#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

read -p "Input Number 1? " firstnumber
read -p "Input Number 2? " secondnumber
read -p "Input Number 3? " thirdnumber
sum=$((firstnumber + secondnumber + thirdnumber))
Products=$((firstnumber * secondnumber * thirdnumber))
cat <<EOF
The sum of $firstnumber , $secondnumber and $thirdnumber numbers is $sum .
The product of $firstnumber , $secondnumber and $thirdnumber numbers is $Products .
EOF
