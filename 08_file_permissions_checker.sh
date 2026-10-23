#!/usr/bin/env bash

#checks file permission present in current directory

echo "File Name         Permissions"
echo "------------------------------"

#* make list of all files in present directory and assifh to variable one by on$
for file in *
do
if [ -f "$file" ]
then
perm=""
#{} append the value 3without changing its previous value
[ -r "$file" ]&&perm="${perm}R"
[ -w "$file" ]&&perm="${perm}W"
[ -x "$file" ]&&perm="${perm}X"
echo "$file        $perm"
fi
done
