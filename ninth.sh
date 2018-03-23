#!/bin/bash
echo "Enter a number"
read a
echo
echo "Do you want to continue(y/n)?"
read choice
numbers[0]=$a
i=1
while [ "$choice" == "y" ]
do
echo "Enter a number"
read numbers[i]
let i++
echo
echo "Do you want to continue(y/n)?"
read choice
done
sum=0
for j in "${numbers[@]}"
do
sum=$(( sum+j ))
done
avg=$(( sum/(i) ))
echo "Average of all the numbers (${numbers[@]}) is $avg"

