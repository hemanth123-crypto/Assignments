#!/bin/bash

# Employee Attendance Validation System

echo "Employee Attendance Validation"

# Accept employee details
echo "Enter Employee Name:"
read name

echo "Enter Employee ID:"
read id

echo "Enter Working Hours:"
read hours

normal_hours=8

# Check working hours
if [ $hours -gt $normal_hours ]
then
    overtime=$((hours - normal_hours))
    echo "Employee Name : $name"
    echo "Employee ID   : $id"
    echo "Working Hours : $hours"
    echo "Overtime Hours: $overtime"
    echo "Status        : Overtime"
elif [ $hours -eq $normal_hours ]
then
    echo "Employee Name : $name"
    echo "Employee ID   : $id"
    echo "Working Hours : $hours"
    echo "Status        : Full Day"
else
    echo "Employee Name : $name"
    echo "Employee ID   : $id"
    echo "Working Hours : $hours"
    echo "Status        : Less than Required Hours"
fi
