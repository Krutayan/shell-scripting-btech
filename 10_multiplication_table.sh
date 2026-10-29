#!/usr/bin/env bash
#Displays Multiplication table of the number given by user

read -p "Enter an Integer: " n

if ! [[ "$n" =~ ^-?[0-9]+$ ]]; then
  echo "Error: enter a whole integer."
  exit 1
fi

i=1
while [ "$i" -le 10 ]; do
  result=$((n * i))
  echo "$n x $i = $result"
  i=$((i + 1))
done
