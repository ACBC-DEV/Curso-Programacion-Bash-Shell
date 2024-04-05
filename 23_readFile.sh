#!/bin/bash
# Program to exemplify how to read a file

echo "Read in a file"
cat "$1"
echo -e "\nStore the values in a variable"
valorCat=$(cat "$1")
echo "$valorCat"

# The IFS (Internal Field Separator) variable is used to prevent white spaces from being cut off
echo -e "\nRead files line by line"

while IFS= read -r linea; do
  echo "$linea"
done <"$1"
