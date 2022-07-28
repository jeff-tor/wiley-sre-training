#!/bin/bash
INPUT_STRING=helo
while [ "$INPUT_STRING" != "bye" ]
do
	echo "Please enter value"
	read INPUT_STRING
	echo "you typed: $INPUT_STRING"
done
