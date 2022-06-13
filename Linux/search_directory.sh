#!/bin/bash
filename=research

if [ ls -la | grep '$filename' ]
then 
	echo "found it"
else
	echo "not there"
fi
