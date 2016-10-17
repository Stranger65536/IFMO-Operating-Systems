#!/bin/bash
ps -A -o pid | tail -n +2 | awk '{file="/proc/"$1"/stat"; getline l < file; split(l,a); close(file); "grep -s avg_atom /proc/"$1"/sched" | getline avg_atom; split(avg_atom,b); print "ProcessID="a[1]" : Parent ProcessID="a[4]" : Average Sleeping Time="b[3]; }' | sort -t '=' -nk 3 > 5.out
