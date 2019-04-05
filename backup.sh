#!/usr/bin/bash
if [ -z $1 ];then
	user=$(whoami) #if no args then make user as whoami
else
	if [ ! -d "/home/$1" ];then # -d returns true if dir exist so use negation 
		echo "Requested $1 user home Directory doesn't exist"   
		exit 1
	fi
	user=$1	
fi

if [ -z $2 ];then
	path=/home/$user
else
	if [ ! -d "$2" ];then # -d returns true if dir exist so use negation 
		echo "Requested Directory $2 doesn't exist"   
		exit 1
	fi
	path=$2	
fi

input=/home/$user/Downloads
output=$path/${user}_Downloads_$(date +%Y-%m-%d).tar.gz

function total_files {
	find $1 -type f | wc -l
}

function total_dirs {
	find $1 -type d | wc -l
}

function total_archieved_dirs {
	tar -tzf $1 | grep /$ | wc -l
}
function total_archieved_files {
	tar -tzf $1 | grep -v /$ | wc -l
}


tar -czf $output $input 2>/dev/null #stderr redirection 

src_files=$(total_files $input)
src_dirs=$(total_dirs $input)

arch_files=$(total_archieved_files $output)
arch_dirs=$(total_archieved_dirs $output)

echo "Files to be included: $src_files"
echo "Directories to be included: $src_dirs" 
echo "Files archieved: $arch_files"
echo "Directories archieved: $arch_dirs"

if [ $src_files -eq $arch_files ];then
	echo "Backup of $input completed!"
else
	echo "Backup of input failed"	
fi	