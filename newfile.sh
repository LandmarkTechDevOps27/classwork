#! /bin/bash
<<rest
This script accepts any file name entered by users and describes whether it is a regular file or a directory. If it is a file then its contents will be displayed. If it is a directory, it will show number of files in that directory.
rest
if [ -f $filename” ]; then
echo “$filename exists in this directory”
echo “and see the contents below”
cat $filename
elif [ -d “$filename” ]; then
echo “The file you entered is a directory”
echo “there are `find $filename –type –f | wc –l` number of files in the $filename directory”
else
echo “Sorry, $filename does not exist as a file or a directory”
fi

