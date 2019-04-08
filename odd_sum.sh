#!/usr/bin/bash
echo -n "Enter limit: "
read limit
sum=0
for((i=1;i<=$limit;i+=2))
do
   	let sum+=$i
done
echo "Sum of odd numbers upto $limit is $sum"
