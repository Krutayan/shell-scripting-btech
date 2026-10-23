#!/usr/bin/env bash

read -p "enter your first number: " a
read -p "enter your second number:" b
let sum=a+b
let diff=a-b
let prod=a*b
let div=a/b
let rem=a%b
printf "sum=%s diff=%s prod=%s div=%s remainder=%s\n" "$sum" "$diff" "$prod" "$$
