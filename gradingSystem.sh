#!/bin/bash


echo "Please enter Student name "
read Sname
while ! [[ $Sname =~ ^-?[[:alpha:]]+$ || $Sname =~ " " ]]; do
	echo " Please enter a valid name not number "
	read Sname
done


echo "Please enter Student ID "
read Sid
while ! [[ $Sid =~ ^-?[[:digit:]]+$ ]]; do
	echo " Please enter a valid student ID "
	read Sid
done


echo "Please enter student gender "
read Sgender
while ! [[ $Sgender =~ ^-?[[:alpha:]]+$ ]]; do
	echo "Please enter a valid gender type male or female "
	read Sgender
done

echo "Please enter student's assignment Mark (20% as max) "
read Sassignment

while [ $Sassignment -gt 20 ]
do
echo "enter a number less than 20"
read Sassignment 
done

echo "Please enter student's Lab Participation Mark (10% as a max)"
read Slab

while [ $Slab -gt 10 ]
do
echo "enter a number less than 10"
read Slab 
done


echo "Please enter student's Quiz mark (10% as a max)"
read Squiz

while [ $Squiz -gt 10 ]
do
echo "enter a number less than 10"
read Squiz
done


echo "Please enter student's Mid Term Mark (30% as a max)"
read Smidterm

while [ $Smidterm -gt 30 ]
do
echo "enter a number less than 30"
read Smidterm
done


echo "Please enter student's Final mark (30% as a max)"
read Sfinal
while [ $Sfinal -gt 30 ]
do
echo "enter a number less than 30"
read Sfinal 
done

Stotalmark=` expr $Sassignment + $Slab + $Squiz + $Smidterm + $Sfinal`


if [[ $Stotalmark -gt 90 && $Stotalmark -le 100 ]]; then
	Sfinalgrade="A"
	
elif [[ $Stotalmark -eq 90 ]]; then
	Sfinalgrade="A-"
	
elif [[ $Stotalmark -gt 80 && $Stotalmark -lt 90 ]]; then
	Sfinalgrade="B"

elif [[ $Stotalmark -eq 80 ]]; then
	Sfinalgrade="B-"

elif [[ $Stotalmark -gt 70 && $Stotalmark -lt 80 ]]; then
	Sfinalgrade="C"

elif [[ $Stotalmark -eq 70 ]]; then
	Sfinalgrade="C-"

elif [[ $Stotalmark -ge 60 && $Stotalmark -lt 70 ]]; then
	Sfinalgrade="D"

elif [[ $Stotalmark -lt 60 ]]; then
	Sfinalgrade="F"
fi

echo "Student Name", "Student Number", "Gender", "Assignment", "Lab Participation", "Quiz", "Midterm", "Final", "Total", "Grade" >> OSSGrades.csv

echo "$Sname", "$Sid", "$Sgender", "$Sassignment", "$Slab", "$Squiz", "$Smidterm", "$Sfinal", "$Stotalmark", "$Sfinalgrade" >> OSSGrades.csv

#awk '!x[$1]++ && ! /^[[:blank:]]*$/' OSSGrades.csv

grep . OSSGrades.csv | awk '!a[$1]++' >> OSSGrades.csv
