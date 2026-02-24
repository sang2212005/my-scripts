#!/bin/bash
Log_file="/tmp/sum_error.log"
exec 2>> "$Log_file"
#nhap so can tinh tong den

sum=0
i=0
for i in 1 2 3 4 5 6

do
	sum=$((sum+i))
done

echo " tong can tinh la : $sum"

