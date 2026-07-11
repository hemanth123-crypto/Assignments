#!/bin/bash

input_file="employee.txt"
report_file="salary_report.txt"

# Function to calculate bonus (10% of basic salary)
calculate_bonus() {
    bonus=$(($1 / 10))
    echo $bonus
}

echo "Employee Salary Report" > $report_file
echo "-------------------------" >> $report_file

while read name department basic
do
    bonus=$(calculate_bonus $basic)
    total=$((basic + bonus))

    echo "$name $department Basic:$basic Bonus:$bonus Total:$total" >> $report_file

done < $input_file
