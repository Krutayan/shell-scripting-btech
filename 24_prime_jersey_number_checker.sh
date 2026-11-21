#!/usr/bin/env bash

echo "To check whether jersey number assigned to player is prime or not."
read -p "Enter the jersey Number: " a

for ((i=2; i<a; i++));do
    rem=$((a % i))
    if [[ $rem -eq "0" ]];then
        echo "The given jersey Number is not Prime"
        exit
    fi
done
echo "The Given jersey Number is a prime number. "
