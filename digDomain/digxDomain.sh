#!/bin/sh

export FILE=$1

while read -r line; do
resolve=`dig -x  +short $line | head -n 1`
echo $line, $resolve
done < $FILE
