#!/bin/bash

echo "What is your name.?"
read name
echo "Nice to meet you, $name"

echo "Do you want to use my calculator.?"
echo "1.Yes/yes"
echo "2.No/no"
read ch

if [[ ($ch = "Yes" || $ch = "yes") ]]
then
echo "               ********* CALCULATOR********** "

echo "Enter your first number"
read num1
echo "Enter your second number"
read num2

echo "What do you want to perform?"
echo "1.Sum"
echo "2.Substraction"
echo "3.Multiplication"
echo "4.Division"
echo "Enter your choice"
read choice

if [ $choice = "1" ]
 then
echo $(($num1 + $num2))

elif [ $choice = "2" ]
 then
echo $(($num1 - $num2))

elif [ $choice = "3" ]
 then
echo $(($num1 * $num2))

elif [ $choice = "4" ]
 then
echo $(($num1 / $num2))

else
echo "Invalid choice"
fi

elif [[ ($ch = "No" || $ch = "no") ]]
then
echo "Thank you!$name"
fi

exit 0
