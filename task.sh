#!/bin/bash

# Task 1
read -p "Enter your name: " name
read -p "Enter your age: " age
year=$(date +%Y)
birth_year=$((year - age))
echo "Hello, $name! You were born in $birth_year."

# Task 2
read -p "Enter directory name: " dirname
mkdir "$dirname"
cd "$dirname"

# Task 3
ls -S

# Task 4
count=$(ls -1 | wc -l)
echo "There are $count files in the directory."

# Task 5
read -p "Enter a list of numbers separated by spaces: " nums
sum=0
for num in $nums; do
  sum=$((sum + num))
done
echo "The sum of the numbers is: $sum"

# Task 6
echo "Your random number is: $((RANDOM % 100 + 1))"

# Task 7
read -p "Enter the filename to backup: " filename
backup_dir="./backup"
mkdir -p "$backup_dir"
timestamp=$(date +%Y%m%d%H%M%S)
cp "$filename" "$backup_dir/$filename.$timestamp"

# Task 8
read -p "Enter website URL: " url
if curl --output /dev/null --silent --head --fail "$url"; then
  echo "$url is up."
else
  echo "$url is down."
fi

# Task 9
read -p "Enter temperature in Celsius: " celsius
fahrenheit=$((celsius * 9 / 5 + 32))
echo "$celsius°C is equal to $fahrenheit°F."

# Task 10
read -p "Enter a sentence: " sentence
echo "$sentence" | rev

