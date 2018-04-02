#!/bin/bash

echo "Enter two real numbers for summation"
echo "First number:"
read f

echo "Second number:"
read s

sum=`echo "$f+$s" | bc`
echo "Sum is: $sum"

