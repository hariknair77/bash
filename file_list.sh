#!/usr/bin/bash
dir=$(pwd)
echo -e "Current directory is $dir \n"
echo -e "Files inside $dir \n"
for i in $(find $dir -printf "%f\n");do
	echo -ne "$i has  "
	echo $i  | expr $(wc -c) - 1 
done	
