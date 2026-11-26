#!/usr/bin/env bash

read -p "Enter number of terms you want in fibonacci:" i
read -p "Initiate the starting number in series (0 or 1):" a
if [ "$a" != "0" ]&&[ "$a" != "1" ]; then
    echo "Error: please enter 0 or 1."
    exit 1
fi
declare -a result
result+=("$a")
b=$(($a+1))
result+=("$b")
z=${#result[@]}
for ((p=z; p<=i-1; p++)); do
    q=${result[$(($p-1))]}
    r=${result[$(($p-2))]}
    s=$(( q+r ))
    result+=("$s")
done
printf "%s," "${result[@]}"
echo ""
