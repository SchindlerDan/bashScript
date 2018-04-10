#!/bin/bash
# i is the correct command syntax for files
i=0 
# j is the incorrect command syntax for files
j=0
if [[ $# < 1 ]]
	then
	echo "Please add a file, directory, or one of the following commands: -c, -l, --help"
	exit 1
fi


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
		i=$((i+1))
		cp $input ~/Backup
	elif [[ -d $input && -e $input ]]
		then
		i=$((i+1))
		cp $input ~/Backup -r
	else
		
		#echo " trying $* as a command arguement"
		
		if [[ $input = *"-"* ]]
			then
			j=$((j-1))
		fi
	fi


	
done





for input in $*
do
	if [[ $input = "-c" ]]
                then
                echo "The number of files and directories:"
                ls ~/Backup| wc -l
                echo "how many bytes:"
                du -b ~/Backup
		j=$((j+1))
        elif [ $input = "-l" ]
                then
                echo "Listing all the files and directories"
                ls ~/Backup -a
		j=$((j+1))
        elif [ "--help" = $input ]
                then
                echo "How to run this script"
                echo "-c will give you the number of files and how many bytes."
                echo "-l will list all files"
		j=$((j+1))
	else
		#echo "Error 404: $*  did not exist in the given prompts"
		if [[ $input != *"-"* ]]
			then
			i=$((i-1))
		fi
        fi
done




if test $i -lt 0
then
	echo "You did not format your file path(s) correctly, please try again."
fi

if test $j -lt 0
then
	echo "You did not format your command option(s) correctly, please try again or use --help for help."
fi
