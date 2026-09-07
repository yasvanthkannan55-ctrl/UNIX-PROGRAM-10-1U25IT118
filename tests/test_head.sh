#!/bin/bash

echo "Running Head Command Test Cases..."

# Run student program

bash starter/solution.sh > output.txt


# Test 1: Check file creation

if [ -f state.txt ]
then
    echo "PASS: File creation successful"
else
    echo "FAIL: File creation failed"
    exit 1
fi


# Test 2: Check head command output

head_output=$(head -n 5 state.txt)


expected="Apple
Tamil Nadu
Kerala
Karnataka
Andhra Pradesh"


if [ "$head_output" == "$expected" ]
then
    echo "PASS: Head command working"
else
    echo "FAIL: Head command output incorrect"
    exit 1
fi


# Test 3: Check first 5 lines

count=$(head -n 5 state.txt | wc -l)


if [ $count -eq 5 ]
then
    echo "PASS: Display specific lines working"
else
    echo "FAIL: Specific line display failed"
    exit 1
fi


echo "All Test Cases Passed Successfully"
