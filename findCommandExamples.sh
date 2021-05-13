#! /bin/bash

find . -type f -iname "config*"  #find file with pattern in current dir
find . -type f -mmin -10   #find file modified less than 10 minutes
find . -type f -mmin +10   #find file modified more than 10 minutes ago
find . -type f -mmin -10 -mmin +5 # find file modified between 10 and 5 minutes ago
find . -type f -mtime -20  # find file modified less than 20 days ago

amin #accessed given time ago
cmin #created given time ago
mmin #modified given time ago

find . -size +5M # find file of size 5 Megabytes or more

find . -perm 777 # find all files with given pemrissions


find directory -type d -exec chmod 755 {} + #find all directories within given directory and change permissions
find directory -type f -exec chmod 664 {} + #find all files within given directory and change permissions

find Directory -exec chown users:group {} + #change users and group for all the files in given dir

find . -type -f -name "*.jpg" -maxdepth 1  # find all the files in current dir but withou subdirs

find . -type -f -name "*.jpg" -maxdepth 1 -exec rm {} +  # find all the files within dir without subdirs and delete it
