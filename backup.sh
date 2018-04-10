if [ "-c" = "$1"| "-c" = "$2"|"-c" = "$3" | "-c" = "$4" | "-c" = "$5" ]
then
        echo "The number of files:"
        ls| wc -l
        echo "how many bytes:"
        du -b .
        exit 1
elif [ "-l" = "$1" | "-l" = "$2" | "-l" = "$3" | "-l" = "$4" | "-l" = "$5" ]
        then
        echo "List all the files"
        ls -a
elif [ "--help" = "$1" | "--help" = "$2" | "--help" = "$3" | "--help" = "$4" | "--help" = "$5" ]
then
        echo "How to run this script"
        echo "-c will give you the number of files and how many bytes."
        echo "-l will list all files"
elif [ "-lt2" = "$s" ]
        then
        echo "Complete"
else
                mkdir ~/backup
                echo "directory created"
fi
