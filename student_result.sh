#!/bin/bash

# Student Result Evaluation System

# Check command-line arguments
if [ $# -ne 5 ]
then
    echo "Usage: ./student_result.sh <Name> <Mark1> <Mark2> <Mark3> <Mark4>"
    exit 1
fi

name=$1
m1=$2
m2=$3
m3=$4
m4=$5

# Calculate total and percentage
total=$((m1 + m2 + m3 + m4))
percentage=$((total / 4))

# Determine result
if [ $percentage -ge 40 ]
then
    result="PASS"
else
    result="FAIL"
fi

# Assign grade
if [ $percentage -ge 90 ]
then
    grade="A+"
elif [ $percentage -ge 80 ]
then
    grade="A"
elif [ $percentage -ge 70 ]
then
    grade="B"
elif [ $percentage -ge 60 ]
then
    grade="C"
elif [ $percentage -ge 40 ]
then
    grade="D"
else
    grade="F"
fi

# Display result
echo "-----------------------------"
echo "Student Result Evaluation"
echo "-----------------------------"
echo "Student Name : $name"
echo "Marks        : $m1 $m2 $m3 $m4"
echo "Total Marks  : $total"
echo "Percentage   : $percentage%"
echo "Result       : $result"
echo "Grade        : $grade"
