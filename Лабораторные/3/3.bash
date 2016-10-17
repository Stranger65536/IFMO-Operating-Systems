#!/bin/bash
ps a -o pid,command | awk '$2~/sbin/ { print $1 }' > 3.out
