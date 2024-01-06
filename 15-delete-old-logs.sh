#!/bin/bash
SOURCE_DIR=/tmp/shell-script-logs

if [ ! -d $SOURCE_DIR ]
then
    echo " $SOURCE_DIR not exist "
fi

FILES_TO_DELETE=$(find $SOURCE_DIR -type f -mtime +14 -name "*.log")

while IFS= read -r line
do
    echo "Deleting file: $line"
    rm -rf $line
done <<< $FILES_TO_DELETE