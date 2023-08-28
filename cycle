#!/bin/bash

for var in first second third
do
echo The $var item
done
echo /////////////////////////
file="somefile.log"
# ignore \n
IFS=$'\n'
for var in $(cat $file)
do
echo " $var"
done
echo /////////////////////////

for file in ./somefolder/*
do
if [ -d "$file" ]
then
echo "$file is a directory"
elif [ -f "$file" ]
then
echo "$file is a file"
fi
done
echo /////////////////////////

numbers=
for ((i = 0; i < 10; i++))
do
numbers=$[ $numbers + $i ]
done
echo "numbers: $numbers"

echo /////////////////////////

# add echo if file (like log)
for (( a = 1; a < 10; a++ ))
do
echo "Number is $a"
done > log
echo "finished."
echo /////////////////////////

