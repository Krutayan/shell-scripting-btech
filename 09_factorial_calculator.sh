#!/usr/bin/env bash

# factorial calculator

read -p "Enter the value of n:" n
fact=1
echo "Factorial of first $n numbers are: "
for((i=1; i<=n; i++))
do
fact=$((fact*i))
echo "Factorial of $i = $fact"
done
