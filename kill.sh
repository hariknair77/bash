#!/usr/bin/bash
echo -n "Enter cpu limit : "
read limit
ps -eo pid,%cpu --sort=-%cpu > pros.txt
awk -v limit="$limit" ' $2 > limit {print $1}' pros.txt > kill.txt
echo "prosses exceed the cpu limit are..."
for i in $(cat kill.txt);do
	echo $(ps -p $i -o comm= )
done

for i in $(cat kill.txt);do
	echo -en "\ndo you want to kill $(ps -p $i -o comm= ) [y/n] "
	read res
	if [ $res = 'y' ];then 
		kill $i
	else
		continue	
	fi	
done	