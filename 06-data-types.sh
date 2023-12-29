#!/bin/bash
n1=$1
n2=$2
sum=$((n1+n2))

echo "Sum is:: $sum"
echo "Total number of args passed:: $#"
echo "List all the args passwd:: $@"
echo "the script name is:: $0"