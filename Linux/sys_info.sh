#!/bin/bash

output_folder=~/output
output_file=$output_folder/sys_info_output.txt

# Create output folder if it doesn't exist
if [ ! -d $output_folder ]
then
	mkdir $output_folder
fi

#if [ -d $output_folder ]
#then
	#folder exists
#else 
#	mkdir $output_folder
#fi

echo "System Audit Script" >> $output_file
echo "Today's date is: " >> $output_file
date >> $output_file

echo "Machine Type Info: "$MACHTYPE >> $output_file


echo "Uname info is: " >> $output_file
uname -a >> $output_file

echo "IP info is:" >> $output_file
ifconfig enp0s3 | grep inet | grep -v inet6 >> $output_file

echo "Hostname $(hostname -s)" >> $output_file

echo "System Audit Script successfully saved all date to output_file"
