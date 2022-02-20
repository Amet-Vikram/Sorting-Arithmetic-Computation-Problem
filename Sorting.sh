#!/bin/bash 

read -p "Enter the values of A B C: " a b c
declare -A values
arr=[]
n=0

values['uc2']=$(($a+$b*$c))
values['uc3']=$(($a*$b+$c))
values['uc4']=$(($c+$a/$b))
values['uc5']=$(($a%$b+$c))

for i in ${!values[@]}
do 
    arr[$n]=$((${values[$i]}))
    n=$(($n+1))
done
echo "Array of All the solutions Before sorting: "${arr[@]} 

for ((i=0;i<4;i++))
do 
	for ((j=0;j<4-i-1;j++))
	do
		if [ ${arr[$j]} -le ${arr[$j+1]} ] 
		then 
			temp=${arr[$j]}
			arr[$j]=${arr[$j+1]}
			arr[$j+1]=$temp
		fi
	done
done
echo "Array After the sorting in Descending Order: "${arr[@]}
for ((i=0;i<4;i++))
do 
	for ((j=0;j<4-i-1;j++))
	do
		if [ ${arr[$j]} -ge ${arr[$j+1]} ] 
		then 
			temp=${arr[$j]}
			arr[$j]=${arr[$j+1]}
			arr[$j+1]=$temp
		fi
	done
done

echo "Array After sorting in Ascending Order: "${arr[@]}