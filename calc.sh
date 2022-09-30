#!/bin/bash

echo "Input the First Number : "
read num1 
echo "Input the Second Number : "
read num2 

while true 
do 
	echo "1.Addition"
	echo "2.Substraction"
	echo "3.Multiplication"
	echo "4.Division"
	echo "5.Exit"
	echo "Select an Operation to Perform: "
	read sw

	case $sw in 

	1)res=`echo $num1 + $num2 | bc`
	;;
	2)res=`echo $num1 - $num2 | bc`
	;;
	3)res=`echo $num1 \* $num2 | bc`
        ;;
	4)res=`echo "scale=2; $num1 / $num2" | bc`
        ;;
	5)
		exit 0
        ;;
	*)
		exit1
        ;;
	esac
	echo "Result : $res"
done



