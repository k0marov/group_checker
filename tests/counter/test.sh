#!/bin/bash

../../count_checker.sh group1 group2 

if [[ ! $? == "0" ]] 
then
	exit 1 
fi 

../../count_checker.sh group1 group2_bad 

if [[ $? == "0" ]] 
then 
	exit 1
fi 

