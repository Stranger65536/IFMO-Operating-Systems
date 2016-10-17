#!/bin/bash
ps -U user -o pid,command | tail -n +2 | awk '{ print substr($0,2) }' | sed 's/ /:/' > 1.out
wc -l 1.out | awk '{ print $1 }'
