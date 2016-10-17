#!/bin/bash
./cycle.bash&pid1=$!
./cycle.bash&pid2=$!
echo $pid1 $pid2
renice +10 $pid1
echo "now wait :)"
sleep 3
ps ax -o pid,pcpu | grep "$pid1\|$pid2"
kill $pid1
kill $pid2


