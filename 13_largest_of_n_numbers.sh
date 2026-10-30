#!/usr/bin/env bash

read -p "Count of Numbers : " n
read -p "Enter Number 1: " largest

for((i=2; i<=n; i++))
do
    read -p "Enter Number $i : " num
    if [ "$num" -gt "$largest" ]
    then
        largest="$num"
    fi
done
echo "Largest Number is:  $largest"
