#!/bin/bash
echo "Enter first number"
read a
echo "Enter second number"
read b
flag=1
if ! [[ "$a" =~ ^[0-9]+$ ]] 
then
echo "a is Invalid"
flag=0
fi
if ! [[ "$b" =~ ^[0-9]+$ ]]
then
echo "b is invalid"
flag=0
fi
if [ "$flag" -eq 1 ]
then
c=$(( a+b ))
echo $c
fi
