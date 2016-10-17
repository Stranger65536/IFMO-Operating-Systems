#!/bin/bash
ps -A -o pid | tail -n +2 | awk '{file="/proc/"$1"/statm"; getline l < file; close(file); split(l,a); print $1":"a[2]-a[3] }' | sort -t : -k 2 -r -n > 4.out
