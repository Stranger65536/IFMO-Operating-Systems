#!/bin/bash
if [[ $# -ne "0" ]]
then
	max=$1
	for i in $@
	do :
		if [[ "$i" -gt "$max" ]]
		then max=$i
		fi
	done
	echo $max
else echo "nothing"
fi
 
