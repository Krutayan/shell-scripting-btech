#!/usr/bin/env bash

read -p "Enter the word to check: " str
reverse=""
i="${#str}"

if [[ -z "$str" ]]; then
    echo "Enter a string"
    exit 1
fi

for ((i=i-1; i>=0; i--));do
    reverse="$reverse${str:$i:1}"
done

echo "Original word: $str"
echo "Reversed word: $reverse"
if [[ "$str" == "$reverse" ]];then
    echo "palindrome"
else
    echo "Not palindrome"
fi
```[cite: 16, 17]

---

### Command / Statement Table

| Command / Statement | Purpose | Example / Observation |
| :--- | :--- | :--- |
| `i="${#str}"` | Calculates and stores the total character length of the input string `str` | Computes upper index bound for iteration |
| `if [[ -z "$str" ]]` | Checks whether the entered string is empty (zero length) | Exits with status `1` if no input is provided |
| `for ((i=i-1; i>=0; i--))` | Iterates backward from the last character index (`length - 1`) down to `0` | Traverses characters in reverse order |
| `${str:$i:1}` | Extracts a single character substring starting at index `$i` | Appends each character to build `reverse` |
| `if [[ "$str" == "$reverse" ]]` | Compares the original string with the reversed string for exact equality | Prints `"palindrome"` if both strings match[cite: 16, 17] |

---

### Conclusion (2 Lines)
This experiment demonstrates string manipulation in Bash using string length expansion (`${#str}`) and substring slicing (`${str:$i:1}`) within a decrementing `for` loop to reverse text[cite: 16, 17]. It reinforces input validation (`-z`) and string equality comparison (`==`) to determine whether a given word is a palindrome[cite: 16, 17].
