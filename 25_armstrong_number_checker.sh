#!/usr/bin/env bash

read -p "Enter number: " num
i=${#num}
z=$i
sum=0
for((i=0; i<z; i++));do
    a=${num:i:1}
    result=$(( $a ** $z))
    sum=$(($sum + $result))
done
echo "$sum"
if [[ "$num" -eq "$sum" ]];then
    echo "it is a armstrong number"
else
    echo "it is not an armstrong number"
fi
```[cite: 19]

---

### Command / Statement Table

| Command / Statement | Purpose | Example / Observation |
| :--- | :--- | :--- |
| `i=${#num}` | Finds the total number of digits in the entered number `num` | Stores digit count for exponentiation and loop limits |
| `for((i=0; i<z; i++))` | Iterates through each digit position from index `0` up to `z - 1` | Traverses every digit sequentially |
| `a=${num:i:1}` | Extracts a single digit at index `i` using substring parameter expansion | Isolates individual digits without division/modulo |
| `result=$(( $a ** $z))` | Raises the extracted digit `$a` to the power of total digits `$z` | Computes the $n$-th power of each digit |
| `sum=$(($sum + $result))` | Accumulates the powered digit values into `sum` | Builds total sum across all loop iterations |
| `if [[ "$num" -eq "$sum" ]]` | Compares the original number with the final calculated sum | Outputs `"it is a armstrong number"` if equal[cite: 19] |

---

### Conclusion (2 Lines)
This experiment demonstrates Armstrong number verification in Bash by combining string length expansion (`${#num}`) and substring slicing (`${num:i:1}`) with exponentiation (`**`) inside a C-style `for` loop[cite: 19]. It illustrates how individual digits can be extracted and mathematically accumulated to validate numeric properties against the original input[cite: 19].
