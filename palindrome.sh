#!/usr/bin/bash
echo "Enter the string you want to check palindrome or not "
read str
str_len=${#str}
str_rev=""
for((i=$str_len;i>0;i--));do
	temp=$(expr substr $str $i 1)
	str_rev=$str_rev$temp
done
if [ $str_rev = $str ];then
	echo "palindrome"
else
	echo "not palindrome"
fi