#!/bin/bash

if [ -n "$1" ]
then
echo Hello $1.
else
echo "No parameters found. "
fi

echo There were $# parameters passed.

echo The last parameter was ${!#}

# all like one str
echo "Using the \$* method: $*"
echo "-----------"
# all params separated
echo "Using the \$@ method: $@"

count=1
for param in "$@"
do
echo "\$@ Parameter #$count = $param"
count=$(( $count + 1 ))
done

echo //////////////////////////////////

while [ -n "$1" ]
do
case "$1" in
-a) echo "Found the -a option";;
-b) param="$2"
echo "Found the -b option, with parameter value $param"
shift ;;
-c) echo "Found the -c option";;
--) shift
break ;;
*) echo "$1 is not an option";;
esac
shift
done
count=1
for param in "$@"
do
echo "Parameter #$count: $param"
count=$(( $count + 1 ))
done

echo -n "Enter your name: "
read name
echo "Hello $name, welcome to my program."
echo //////////////////////////////////
read -p "Enter your name: " first last
echo "Your data for $last, $first…"
echo //////////////////////////////////
if read -t 5 -s -p "Enter your pass quickly!: " pass
then
echo "YOUR PASS - $pass, lalka we take all your money"
else
echo "Sorry, too slow! "
fi
echo //////////////////////////////////
count=1
cat somefile.log | while read line
do
echo "Line $count: $line"
count=$(( $count + 1 ))
done
echo "Finished"
