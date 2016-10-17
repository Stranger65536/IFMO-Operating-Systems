#!/bin/bash
at -f ./1.bash now + 1 minute
tail -n 0 -f ~/report

