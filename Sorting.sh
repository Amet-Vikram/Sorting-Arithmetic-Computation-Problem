#!/bin/bash 

read -p "Enter the values of A B C: " a b c
declare -A values

values[0]=$(($a+$b*$c))

values[1]=$(($a*$b+$c))

values[2]=$(($c+$a/$b))

values[3]=$(($a%$b+$c))

echo ${values[@]}