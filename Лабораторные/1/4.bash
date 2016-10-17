#!/bin/bash
read a
count=1
while [[ "$a"%2 -ne "0" ]]
do :
	read a
	let count=count+1
done
echo $count


