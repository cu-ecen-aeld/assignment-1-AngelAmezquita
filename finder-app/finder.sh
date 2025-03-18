!/bin/bash
filesdir=$1
searchstr=$2
 
if [ $# -lt 2 ]
then
    echo Incorrect number of arguments!
    exit 1
elif [ -d $filesdir ]
then
    totalFiles=$(ls -l $filesdir | egrep -c '^-')
    totalLines=$(egrep -s $searchstr $filesdir/* | wc -l)
    echo The number of files are $totalFiles and the number of matching lines are $totalLines
    exit 0
else
    echo The first argument is not a directory!
    exit 1
fi
