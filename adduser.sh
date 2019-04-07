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
			if [ `grep $2 $1 | wc -l` -eq 0 ];then
				echo $2 >> $1
				echo "user $2 added"
			else
				echo "user $2 already exist"	
			fi
		fi
	fi
fi
