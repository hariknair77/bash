#!/usr/bin/bash
i=10
until [[ $i -lt 3 ]]; do
	echo $i
	let i-=1
done
