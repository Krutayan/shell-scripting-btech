# shell-scripting-btech

A collection of Linux shell scripts and lab exercises from my First Year B.Tech coursework.

## Environment
* **OS:** Linux (Ubuntu / VirtualBox)
* **Shell:** GNU Bash (`/usr/bin/env bash`)
* **Editor:** nano / terminal

---

## List of Scripts

| No. | Script Name | Description |
| :--- | :--- | :--- |
| 01 | `01_hello_linux.sh` | Basic `echo` command to print text output. |
| 02 | `02_variables_demo.sh` | Declares and prints basic shell variables. |
| 03 | `03_user_input.sh` | Reads user input from the terminal using `read`. |
| 04 | `04_user_inputs_output.sh` | Formats user input prompts and output display. |
| 05 | `05_arithmetic_operations.sh` | Basic arithmetic operations using `$(( ))` / `expr`. |
| 06 | `06_let_arithmetic.sh` | Arithmetic calculations using the `let` command. |
| 07 | `07_command_line_args_lister.sh` | Reads and displays command-line positional parameters (`$1`, `$2`, etc.). |
| 08 | `08_file_permissions_checker.sh` | Checks read, write, and execute permissions of files in the current directory. |
| 09 | `09_factorial_calculator.sh` | Calculates the factorial of a number using a `for` loop. |
| 10 | `10_multiplication_table.sh` | Prints multiplication tables using a `while` loop with input validation. |
| 11 | `11_menu_calculator.sh` | Menu-driven calculator using `case` statements and division-by-zero checks. |
| 12 | `12_largest_of_three_numbers.sh` | Finds the largest among 3 numbers using `if-else`. |
| 13 | `13_largest_of_n_numbers.sh` | Finds the largest number out of $N$ user-entered values. |
| 14 | `14_sum_of_even_factorials.sh` | Computes the sum of factorials for even numbers within a range. |
| 15 | `15_file_statistics_wc.sh` | Counts lines, words, bytes, and characters in a file using `wc` (interactive). |
| 16 | `16_file_statistics_positional_arg.sh` | Counts file lines, words, bytes, and characters using a positional argument (`$1`). |
| 17 | `17_directory_lister_strict.sh` | Lists directory contents in detail (`ls -la`) using strict mode (`set -u`) and directory checks. |
| 18 | `18_reverse_file_content_tac.sh` | Checks if a file exists and prints its lines in reverse order using `tac`. |
| 19 | `19_reverse_file_content_positional_arg.sh` | Reverses file contents using `tac` via a command-line positional argument (`$1`). |
| 20 | `20_display_original_and_reversed_file.sh` | Displays both original (`cat`) and reversed (`tac`) contents of a file. |
| 21 | `21_reverse_file_using_array.sh` | Reads file lines into a Bash array (`declare -a`), counts lines, and prints them in reverse. |
| 22 | `22_palindrome_checker.sh` | Checks whether a user-entered string is a palindrome using string slicing. |
| 23 | `23_palindrome_checker_positional_arg.sh` | Checks whether a string passed via positional argument (`$1`) is a palindrome. |
| 24 | `24_prime_jersey_number_checker.sh` | Checks if a given jersey number is prime using modulo division in a loop. |
| 25 | `25_armstrong_number_checker.sh` | Checks if a given number is an Armstrong number using digit slicing and exponentiation.[cite: 6, 7, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 19] |

---

## How to Run

1. Clone the repository:
   ```bash
   git clone [https://github.com/Krutayan/shell-scripting-btech.git](https://github.com/Krutayan/shell-scripting-btech.git)
   cd shell-scripting-btech
