#!/bin/bash
ps ax -o pid,stime,command | tail -n +2 | head -n -6 | tail -n -1 | awk '{ print substr($1,1)" "$2" "$3}'
