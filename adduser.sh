#!/usr/bin/bash
if [ $# -ne 2 ];then
	echo "invalid number of args "
else
	if [ -d "$1" ];then
		echo "File not exist"
	else 
		if [ ! -s "$1" ];then
			echo $2 >> $1
		else
			if grep -q $2 $1;then
				echo "user $2 already exist"	
			else
				echo $2 >> $1
				echo "user $2 added"
			fi
		fi
	fi
fi
