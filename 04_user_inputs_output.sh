#!/usr/bin/env bash
#inputs from user and using them in output

read -p "Enter Your Name : " student_name
read -p "Enter your marks : " student_marks
printf "Good Morning! %s\n" "$student_name"
printf "Your vmarks in shell scripting is %s\n" "$student_marks"
printf "1\n"
printf "2\n"
