#!/usr/bin/env bash

read -p "Enter the number of terms you want in fibonacci: " n
read -p "initiate the starting number in series (0 or 1): " a
if [ "$a" != "0" ]&&[ "$a" != "1" ]; then
    echo "Error: Please enter 0 or 1."
    exit 1
fi
b=$(($a+1))
echo "$a"
echo "$b"
for ((i=2; i<=n-1; i++)); do
    sum=$(($a+$b))
    echo "$sum"
    a=$b
    b=$sum
done
```[cite: 19]

---

### Command / Statement Table

| Command / Statement | Purpose | Example / Observation |
| :--- | :--- | :--- |
| `if [ "$a" != "0" ]&&[ "$a" != "1" ]` | Validates that the starting seed `a` is strictly `0` or `1` | Exits with status `1` if an invalid initial number is entered |
| `b=$(($a+1))` | Computes the second term (`1` when `a=0`, or `2` when `a=1`) | Sets up the first two terms before entering the loop |
| `for ((i=2; i<=n-1; i++))` | Iterates from index `2` up to `n - 1` to generate the remaining `n - 2` terms | Controls exact number of terms printed |
| `sum=$(($a+$b))` | Adds the current two consecutive terms `a` and `b` using arithmetic expansion | Computes the next Fibonacci number |
| `a=$b` / `b=$sum` | Shifts variable values forward for the next iteration | Updates `a` to the previous `b`, and `b` to the new `sum`[cite: 19] |

---

### Conclusion (2 Lines)
This experiment demonstrates the most memory-efficient way to generate a Fibonacci sequence in Bash by updating two state variables (`a` and `b`) iteratively inside a C-style `for` loop[cite: 19]. Unlike string-slicing or array-based implementations, this approach prints multi-digit terms directly in $O(1)$ space without storing the entire sequence in memory[cite: 19].
