#!/usr/bin/env bash

#sum of two number

read -p "Enter your first number : " a
read -p "Enter your second number : " b
sum=$((a+b))
printf "Sum of two number : %s\n" "$sum"
diff=$(expr "$a" - "$b")
printf "Difference of these two number is : %s\n" "$diff"
multi=$(expr "$a" \* "$b")
printf "Multiplication of these two number is : %s\n " "$multi"
div=$(expr "$a" / "$b")
printf "Division of these two number is: %s\n " "$div"
rem=$(expr "$a" % "$b")
printf "remainder of these two : %s\n" "$rem"
