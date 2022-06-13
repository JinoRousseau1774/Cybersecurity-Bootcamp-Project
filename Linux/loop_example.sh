#!/bin/bash

days=('mon' 'tues' 'wed' 'thurs' 'fri' 'sat' 'sun')

for day in ${days[@]};
do 
	echo $day
	if [ $day = 'sat' ] || [ $day = 'sun' ]
	then 
		echo "its the wkd"
	else
		echo "Go to work"
	fi
done
