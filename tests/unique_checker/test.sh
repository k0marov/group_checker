#!/bin/bash

../../unique_checker.sh group1 group2 

if [[ ! $? == "0" ]] 
then
	echo "Tests failed for good case" 
	exit 1 
fi 

../../unique_checker.sh group1 group2_bad 

if [[ $? == "0" ]] 
then 
	echo "Tests failed for bad case" 
	exit 1
fi 

