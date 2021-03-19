#!/bin/bash

echo "Do you want to make a directory.?"
echo "1.Yes/yes"
echo "2.No/no"
read ans

if [[ ($ans = "Yes" || $ans = "yes") ]]
then
echo "Enter the name of the directory"
read dir
echo "enter the path to create a directory"
read path
sudo mkdir $path/$dir

elif [[ ($ans = "No" || $ans = "no") ]]
then
echo "Okay,Thank You..!"

fi
exit 0

