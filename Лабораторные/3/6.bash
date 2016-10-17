#!/bin/bash
let ppid=0
let sleepavg=0
let sum=0
let count=1
out=""
while read l
do :
	nextppid=$(echo $l | awk -F '=' '{ print $3; }' | awk '{ print $1; }')
	nextsleepavg=$(echo $l | awk -F '=' '{ print $4; }')
	if [ $ppid == $nextppid ];
	then
		sum=$(echo "scale=6; $sum+$nextsleepavg" | bc)
		let count=$count+1 
	else
		sleepavg=$(echo "scale=6; $sum/$count" | bc)
		case $sleepavg in .*) sleepavg=0$sleepavg;; esac
		out=$out'\n'
		out=$out"Average Sleeping Children "
		out=$out"of ParentID="$ppid
		out=$out" is "$sleepavg
		ppid=$nextppid
		sum=$nextsleepavg
		count=1
	fi
	out=$out'\n'$l
done < 5.out
sleepavg=$(echo "scale=6; $sum/$count" | bc)
case $sleepavg in .*) sleepavg=0$sleepavg;; esac
out=$out'\n'
out=$out"Average Sleeping Children "
out=$out"of ParentID="$ppid
out=$out" is "$sleepavg
echo -e $out > 6.out
