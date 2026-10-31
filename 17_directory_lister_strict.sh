#!/usr/bin/env bash

set -u    #strict command, if variable not defined exit code

dir="${1:-.}"

if [[ ! -d "$dir" ]]; then
    echo "not a directory"
    exit1
fi
ls -la -- "$dir"
