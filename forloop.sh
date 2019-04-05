#!/usr/bin/bash
for i in $(cat $1);do
	echo -n $i |wc -c 
done
