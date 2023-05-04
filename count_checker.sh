#!/usr/bin/bash 

group1=$1
group2=$2 

count1=`cat $group1 | wc -l`
count2=`cat $group2 | wc -l`

if [[ $count1 -eq $count2 ]] 
then
	echo "В группах одинаковое количество человек."
else
	echo "В группах НЕ одинаковое количество человек."
fi 

