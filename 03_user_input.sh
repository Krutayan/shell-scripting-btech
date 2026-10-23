#!/usr/bin/env bash

# uses of input from user

read -p "Enter Your Name: " name
echo "Hello! $name"
printf "Your name is %s\n" "$name"
marks=95
printf "You have secured %s marks \n" "$marks"
