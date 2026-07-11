#!/bin/bash

input_file="books.txt"
report_file="library_report.txt"

# Function to check stock status
check_status() {
    copies=$1

    if [ $copies -ge 6 ]
    then
        echo "High Stock"
    elif [ $copies -ge 3 ]
    then
        echo "Medium Stock"
    else
        echo "Low Stock"
    fi
}

echo "Library Book Report" > $report_file
echo "----------------------" >> $report_file

echo "Low Stock Books:" >> $report_file

while read id book copies
do
    status=$(check_status $copies)

    echo "$id $book $copies Status:$status" >> $report_file

done < $input_file
