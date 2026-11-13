#!/usr/bin/env bash

str=$1
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
| `str=$1` | Captures the first command-line positional parameter and stores it in `str` | Running `./script.sh madam` sets `$str` to `madam` |
| `i="${#str}"` | Computes and stores the total character length of `str` | Sets the starting upper bound for backward iteration |
| `if [[ -z "$str" ]]` | Checks whether the positional parameter is empty or unset | Prints `"Enter a string"` and exits with code `1` if missing |
| `for ((i=i-1; i>=0; i--))` | Iterates backward from the last character index (`length - 1`) down to `0` | Traverses characters in reverse sequence |
| `${str:$i:1}` | Extracts a single character substring at index `$i` | Concatenates each character into `reverse` |
| `if [[ "$str" == "$reverse" ]]` | Evaluates exact string equality between original and reversed words | Outputs `"palindrome"` when both match[cite: 16, 17] |

---

### Conclusion (2 Lines)
This experiment demonstrates non-interactive palindrome verification by passing a string via positional parameter (`$1`) and reversing it using string length (`${#str}`) and substring slicing (`${str:$i:1}`)[cite: 16, 17]. It reinforces input validation (`-z`) and conditional string equality checks (`==`) to compare original and reversed text[cite: 16, 17].
