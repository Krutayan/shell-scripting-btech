#!/usr/bin/env bash
#calculator using choice command
read -p "Enter First Number : " a
read -p "Enter Second Number : " b
echo "1:+ 2:- 3:* 4:Quotient 5:remainder"
read -p "Choose choice 1-5: " choice
case "$choice" in
  1) echo "$a + $b = $((a + b))" ;;
  2) echo "$a - $b = $((a - b))" ;;
  3) echo "$a * $b = $((a * b))" ;;
  4) if [ "$b" -eq 0 ]; then echo "Error; Remainder by zero"
     else echo "Quotient = $((a / b))"; fi ;;
  5) if [ "$b" -eq 0 ]; then echo "Error: Remainder by zero"
     else echo "Remainder = $((a % b ))" ; fi ;;
  *) echo "Invalid Choice : select 1-5" ;;
esac
