#!/bin/bash
man bash | awk ' { gsub(" ", "\n"); print } ' | awk NF | awk ' length($0) > 4 ' | sort | uniq -c | sort -rn | head -3
