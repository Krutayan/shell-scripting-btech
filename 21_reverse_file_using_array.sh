#!/usr/bin/env bash

read -p "Enter the filename : " file

if [[ -f "$file" ]]; then
    echo "Original file content : "
    cat $file
    declare -a lines

    #createing empty array
    while IFS= read -r line;
    do
        lines+=("$line")
    done < "$file"
    # another way for diaplaying original content
    # echo "original file content:"
    # echo "${file[@]}"
    i="${#lines[@]}"
    echo "No. of lines: $i"
    echo "Reversed file contents : "
    for((i=i-1; i>=0; i--))
    do
        echo "${lines[i]}"
    done
else
    echo "file does not exist"
fi
```[cite: 14, 15]

---

### Command / Statement Table

| Command / Statement | Purpose | Example / Observation |
| :--- | :--- | :--- |
| `declare -a lines` | Initializes an indexed array variable named `lines` to hold text rows | Creates empty array storage before file reading |
| `while IFS= read -r line` | Reads input line-by-line without splitting spaces (`IFS=`) or interpreting backslashes (`-r`) | Safely captures each line intact from `$file` |
| `lines+=("$line")` | Appends each read line as a new element at the end of the `lines` array | Populates array sequentially per iteration |
| `i="${#lines[@]}"` | Stores the total count of elements in the `lines` array into `i` | Calculates total lines without invoking `wc -l` |
| `for((i=i-1; i>=0; i--))` | Iterates backward from the last valid array index (`length - 1`) down to `0` | Traverses stored lines in reverse sequence |
| `echo "${lines[i]}"` | Accesses and prints the array element located at index `i` | Outputs lines from bottom to top without `tac`[cite: 14, 15] |

---

### Conclusion (2 Lines)
This experiment demonstrates how to store file lines in a Bash indexed array (`declare -a`) using `IFS=` and `while read -r`, and reverse their output programmatically via a decrementing C-style `for` loop[cite: 14, 15]. It shows how native shell arrays and index manipulation can replicate external utilities like `wc -l` and `tac` without relying on extra commands[cite: 14, 15].
