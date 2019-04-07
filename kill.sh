#!/usr/bin/bash
echo -n "Enter cpu limit : "
read limit
ps -eo pid,%cpu --sort=-%cpu > pros.txt
awk -v limit="$limit" ' $2 > limit {print $1}' pros.txt > kill.txt
if [ ! -s kill.txt ];then
	echo "No prosses exceed the limit"
else
	echo "prosses exceed the cpu limit are..."
	echo -e "COMMAND\t %CPU"
	for i in $(cat kill.txt);do
		echo $(ps -p $i -o comm=,%cpu= )
	done
fi

for i in $(cat kill.txt);do
	echo -en "\ndo you want to kill $(ps -p $i -o comm= ) [y/n] "
	read res
	if [ $res = 'y' ];then 
		kill $i
	else
		continue	
	fi	
done	