#!/bin/bash
echo "Enter 3 numbers of your choice"
read a 
read b 
read c
max=$c
point=c
if [ $a -gt $b -a $a -gt $c ]
then
max=$a
point=a
elif [ $b -gt $a -a $b -gt $c ]
then
max=$b
point=b
else
max=$c
point=c
fi
echo "Largest is $point - $max"


