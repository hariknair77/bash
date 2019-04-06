#!/usr/bin/bash
x=10
y=3

echo $(( $x + $y ))
echo $(( $x - $y ))
echo $(( $x * $y ))
echo $(( $x / $y ))
echo $(( $x % $y ))

echo -e "\nusing expr"
echo $(expr $x + $y)
echo $(expr $x \* $y)

echo -e "\nusing let"
let a=2+2
echo $a
let a++
echo $a
let a--
echo $a


echo -e "\nusing bc command"
echo '8.5 / 2.5' | bc
echo 'scale=2;8.5 / 2.5' | bc
echo $(echo 'scale=15;sqrt(10)' | bc)
