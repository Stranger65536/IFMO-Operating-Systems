#!/bin/bash
grep -sPh '^#!/bin/\w+' /bin/* | sort | uniq -c | head | tr ' ' '\n' | sed '/^$/d' | sed '1d' | tr '/' '\n' | tail -1
