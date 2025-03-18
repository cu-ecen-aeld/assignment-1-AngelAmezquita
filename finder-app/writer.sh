#!/bin/bash

writefile=$1
writestr=$2

if [ $# -eq 2 ]
then
        directory=$(dirname $writefile)

        if [ ! -d $directory ]
        then
                mkdir -p $directory
                #echo Directory $directory created with exit code $?!
        fi

        echo $writestr > $writefile
        #echo File $writefile created!

        #if [ $? ]
        #then
        #       exit 1
        #else
        #       exit 0
        #fi

else
        exit 1
fi

