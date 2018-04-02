#!/bin/bash 

var=(5,2,8,1,7)
echo "original array"
 echo ${var[$i]}

flag=0

for (( i=0; i < 5; i++ ))
do
 for (( j=0; j < 5; j++ ))
 do
    if [ ${var[$j]} -gt ${var[$i]} ]
     then
         flag=${var[$i]}
         var[$i]=${var[$j]}
         var[$j]=$flag
     fi
done
done
echo "Sorted array:"

  echo ${var[*]}
