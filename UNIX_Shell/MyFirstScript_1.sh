#!/bin/bash
#Records the highest life expectancy in a country in 2002
# Usage: sh script.sh
input=Data/gapminder.txt
cut -f1,3,4 $input | grep 2002 | sort -n -k3 | tail -n 1 > Country_HighestLifeExp.txt
