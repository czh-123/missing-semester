#!/bin/bash

error="0"
count="0"
file="testcase3.sh"
#bash ./$file 1>run.log 2>error.log  #use bash always because of [[ ]]

while [[ $error -eq 0 ]];do        #always use whitespace
	bash ./$file 1>>run.log 2>>error.log
	if [[ $? -ne 0 ]];then
		error="1"
	fi
	count=$[$count+1]   # $[] means suanshu alg
done

echo "run $0 finished run $count times"

