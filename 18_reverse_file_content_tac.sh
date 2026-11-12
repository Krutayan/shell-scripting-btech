#!/usr/bin/env bash

#this script checks whether given file exist and if yes than show its content i$

read -p "Enter the Filename : " file

if [[ -f "$file" ]]; then
    tac $file
else
    echo "Error : File does not exist"
fi
