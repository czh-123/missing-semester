#!/bin/bash

# using source move.sh
move (){
	for file in "$@";do
		ls ~/missing/lecture2* | grep "$file"
		if [[ $? -ne 0 ]];then
			echo "in ~/missing/lecture2*/ no $file"
			echo "create $file"
			touch ~/missing/lecture2*/$file || echo "created failure"
			dirname=$(dirname ~/missing/lecture2*/polo.sh)
			echo $dirname
			touch $dirname/$file || echo "created failure twice"	
		fi
		#echo "created success"
		cat "/tmp/missing/$file" > ~/missing/lecture2*/$file
		echo "done"
	done
}
