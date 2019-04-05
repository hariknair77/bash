#!/usr/bin/bash
string_a="UNIX"
string_b="GNU"

echo "Are $string_a and $string_b equal?"
[ $string_a = string_b ];echo $?

num_1=100
num_2=100

echo "Is $num_2 equal to  $num_1 ?"
[ $num_1 -eq $num_2 ];echo $?
