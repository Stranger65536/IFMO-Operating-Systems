#!/bin/bash
b=""
read a
while [[ "$a" -ne "q" ]]
do :
	b=$b$a
	read a
done
echo "$b"

