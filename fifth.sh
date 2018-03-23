#!/bin/bash
echo "******MENU******"
echo
echo "a-Addition"
echo
echo "b-Subtraction"
echo
echo "c-Multiplication"
echo
echo "d-Division"
echo
echo "Enter your choice"
read choice
echo
echo "Enter 2 numbers"
read a
read b
ans=0
case "$choice" in 
"a")
ans=$(( a + b ))
echo "Answer is $ans"
;;
"b")
ans=$(( a - b ))
echo "Answer is $ans"
;;
"c")
ans=$(( a * b ))
echo "Answer is $ans"
;;
"d")
ans=$(( a / b ))
echo "Answer is $ans"
;;
*) 
echo "Wrong choice."
;;
esac



