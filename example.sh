#!/bin/bash

if test  $# -lt 1
    then
        echo "You must provide an argument"
        exit 1

elif test "$1" = "-l"
    then
        echo "List all the files"
        ls
elif test "$1" = "-c"
    then
        echo "Number of files: "
        ls -1 | wc -l
        echo "Number of Bytes: "
        #ls -1 | wc -c
        du -b .
elif test "$1" = "--help"
    then
        echo "How to run this script: "
        echo "the -c command lists number of files and the number of bytes."
        echo "the -l command lists all of the files."
        echo "the --help command displays this help message."

fi

if test -d  ~/Backup
    then
        echo
    else
        mkdir ~/Backup
fi

