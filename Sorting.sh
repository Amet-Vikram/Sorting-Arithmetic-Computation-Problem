#!/bin/bash 

read -p "Enter the values of A B C: " a b c

uc2=$(($a+$b*$c))
echo "Value of operation in UC-2 is: " $uc2