#!/bin/bash

input_file="enrollment.txt"
report_file="course_report.txt"

total_revenue=0
python_count=0
java_count=0
linux_count=0

course_type() {
    case $1 in
        Python|Java)
            echo "Programming Course"
            ;;
        Linux)
            echo "System Course"
            ;;
        *)
            echo "Other Course"
            ;;
    esac
}

echo "Course Enrollment Report" > $report_file
echo "--------------------------" >> $report_file

while read student course fee
do
    type=$(course_type $course)

    echo "$student enrolled in $course Fee:$fee Type:$type" >> $report_file

    total_revenue=$((total_revenue + fee))

    case $course in
        Python)
            python_count=$((python_count + 1))
            ;;
        Java)
            java_count=$((java_count + 1))
            ;;
        Linux)
            linux_count=$((linux_count + 1))
            ;;
    esac

done < $input_file

echo "--------------------------" >> $report_file
echo "Course Enrollments:" >> $report_file
echo "Python : $python_count" >> $report_file
echo "Java   : $java_count" >> $report_file
echo "Linux  : $linux_count" >> $report_file
echo "--------------------------" >> $report_file
echo "Total Revenue: $total_revenue" >> $report_file
