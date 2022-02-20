#!/bin/bash -x

read -p "Enter the values of A B C: " a b c
declare -A values
arr=[]
n=0

values['uc2']=$(($a+$b*$c))

values['uc3']=$(($a*$b+$c))

values['uc4']=$(($c+$a/$b))

values['uc5']=$(($a%$b+$c))

echo ${!values[@]}

for i in ${!values[@]}
do 
    arr[$n]=$((${values[$i]}))
    n=$(($n+1))
done
echo ${arr[@]} 