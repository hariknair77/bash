#!/usr/bin/bash
echo  "Enter two numbers"
read num1
read num2
echo "What yoy want.."
echo "1. Add"
echo "2. Sub"
echo "3. mult"
echo "4. Div"
read ch
case $ch in 
	1) res=$(expr $num1 + $num2 );;
	2) res=$(expr $num1 - $num2 );;
	3) res=$(expr $num1 \* $num2 );;
	4) res=$(expr $num1 / $num2 );;
	*) echo "Invalid choice "
esac
echo "Result = $res"
