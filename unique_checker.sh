#!/usr/bin/bash 

group1=$1
group2=$2 

count1=`cat $group1 | wc -l`
count2=`cat $group2 | wc -l`


if [[ $count1 -gt $count2 ]] 
then
	bigger=$group1
	smaller=$group2
else
	smaller=$group2 
	bigger=$group1
fi 

for stud in `cat $smaller` 
do
	grep "^$stud\$" $bigger > /dev/null
	if [[ $? == "0" ]] 
	then 
		echo "Существует больше одного $stud"
	fi
done


