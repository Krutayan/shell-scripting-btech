#!/usr/bin/env bash
#display largest number from 3 inputs

read -p "Enter First number : " a
read -p "Enter second Number : " b
read -p "Enter third Number : " c

if [ "$a" -gt "$b" ]; then
  if [ "$a" -gt "$c" ]; then
    echo "Largest Number is $a"
  else echo "Largest Number is $c"
  fi
else
  if [ "$b" -gt "$c" ]; then
    echo "Largest Number is $b"
  else echo "Largest Number is $c"
  fi
fi
