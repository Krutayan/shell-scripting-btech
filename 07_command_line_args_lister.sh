#!/usr/bin/env bash

#lister

for file in "$@" ; do
printf "%s\n" "$file"
done
