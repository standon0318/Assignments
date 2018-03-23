#!/bin/bash
echo "Enter a number"
read a
temp=$a
rev=0
while [ "$temp" != 0 ]
do
dig=$(( temp % 10 ))
rev=$(( rev * 10 + dig )) 
temp=$(( temp / 10 ))
done
echo "Reverse of $a is $rev"
