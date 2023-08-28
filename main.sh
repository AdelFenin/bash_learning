#!/bin/bash

# This is a comment

echo "The current directory is:"

pwd

echo "my home locale: \$$HOME"

my_var=14

echo "my variable: $my_var"

my_dir=$(pwd)

echo "my dir: $my_dir"

addition_numbers=$(( 5 + 9 ))

# num  =>  str
# -eq  =>  =
# -ge  =>  >=
# -gt  =>  \>
# -le  =>  <=
# -lt  =>  \<
# -ne  =>  !=

if [ $addition_numbers = 13 ]
then
echo "YES! addition numbers is a: $addition_numbers"
else
echo "NO! addition numbers is a: $addition_numbers"
fi

file_path="./somefile.log"

# check exist file with path
if [ -f $file_path ]
then
# get content in file and sort to increase
sort somefile.log
else
echo "NO file in this location: $file_path"
fi


