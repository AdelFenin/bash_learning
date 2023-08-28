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
