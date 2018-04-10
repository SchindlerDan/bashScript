#!/bin/bash

for input in $*
do

	if [[ -d  ~/Backup ]]
		then
        	echo
	else
        	mkdir ~/Backup
	fi
	
	if [[ -f $input && -e $input ]]
		then
		cp $input ~/Backup
	elif [[ -d $input && -e $input ]]
		then
		cp $input ~/Backup -r
	fi


	
done





for input in $*
do
	if [[ $input = "-c" ]]
                then
                echo "The number of files:"
                ls| wc -l
                echo "how many bytes:"
                du -b .

        elif [ $input = "-l" ]
                then
                echo "List all the files"
                ls -a
        elif [ "--help" = $input ]
                then
                echo "How to run this script"
                echo "-c will give you the number of files and how many bytes."
                echo "-l will list all files"
        elif [ "-lt2" = "$s" ]
                then
                echo "Complete"

        fi
done
