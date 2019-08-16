#!/bin/bash
set -e

# this script calculates sha1sum from .vti files in given dir on local computer
# hashes are used for unit tests

DIRNAME=$1

if test -d $DIRNAME
then
    for i in $DIRNAME/*.vti
    do
    	echo " --- hashing $i --- "
    	sha1sum $i > "$i.sha1"
    	rm $i
    done
else
	echo directory doesnt exists
fi

echo -e "\n\n All *vti from $DIRNAME hashed!"
