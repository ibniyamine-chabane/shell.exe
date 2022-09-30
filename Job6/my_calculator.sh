#!/bin/bash

number1=$1
operator=$2
number2=$3

echo $operator

if [ $operator = "x" ]
then
	operator=\*
echo $operator
fi

echo $number1

echo $number2

total=$(( $number1 $operator $number2 ))

echo $total
