#!/bin/bash
echo "Enter a number"
read num 
i=1
fact=1
if [ $num -le 0 ]
then
echo "Invalid number"
fi
if [ $num -gt 0 ]
then
while [ $i -le $num ]
do
fact=$(( fact * i ))
let i++
done
echo
echo "Factorial is $fact"
fi

