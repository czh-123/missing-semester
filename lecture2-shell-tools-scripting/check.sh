#!/bin/bash

count="0"
file="testcase3.sh"
bash ./$file 1>>run.log 2>>error.log  #use bash always because of [[ ]]

while [[ $? -eq 0 ]];do        #always use whitespace
	bash ./$file 1>>run.log 2>>error.log
done

echo "run $0 finished"

