#!/bin/bash

hour=`date +%H`
if [ $hour -le 12 ]; then
    echo 'good morning'
elif [ $hour -ge 18 ]; then
    echo 'good evening'
else
    echo 'good afternoon'
fi

