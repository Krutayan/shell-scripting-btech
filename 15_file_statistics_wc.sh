#!/usr/bin/env bash

read -p "Enter your file name: " file

if [[ -f "$file" ]]; then
    echo "Number of line:"
    wc -l $file
    echo "Number of words in file:"
    wc -w $file
    echo "Number of Bytes in file:"
    wc -c $file
    echo "Number of Characters in file:"
    wc -m $file
else
    echo "entered valid file name"
fi
