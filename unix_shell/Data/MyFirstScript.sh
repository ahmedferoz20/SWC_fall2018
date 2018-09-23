#!/bin/bash
#usage:../MyfirstScipt.sh.input.year
#Takes.compare indices.and.finds.country
#


input=$1
year=$2
indices=$3

cut -f1,3,$indices $input | sort -k3 | grep $year| tail -1 > compare_indices.txt
