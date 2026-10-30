#!/usr/bin/env bash

#factorial and than sum of even fact from range

read -p "Enter first number from your range: " a
read -p "Enter last number from your range: " n
sum=0
for((i=a; i<=n; i++)); do
    rem=$((i % 2))
    if ((rem==0))
    then
        fact=1
        for((z=1; z<=i; z++));
        do
            fact=$((fact*z))
        done
        sum=$((sum+fact))
    fi
done
echo "the sum of even factorial from your range is : $sum "
