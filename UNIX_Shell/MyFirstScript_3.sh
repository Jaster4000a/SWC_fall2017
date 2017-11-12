#!/bin/bash
#Records the highest life expectancy in a country in 2002
# Usage: sh script.sh arg1 arg2 arg3 arg4
input=$1
year=$2
columns=$3
out=$4
cut -f1,3,$columns $input | grep $year | sort -n -k3 | tail -n 1 > $out.txt
