#!/usr/bin/bash
touch odd even result
for i in $*
do
	if (( $i % 2 == 0));then
		echo $i >> even
		let even_sq_sum+=$i*$i
	else
		echo $i >> odd
		let odd_sum+=$i
	fi
done
echo "sum of odd numners is $odd_sum" > result
echo "Sum of even squares is $even_sq_sum" >> result
