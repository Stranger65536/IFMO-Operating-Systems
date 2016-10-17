#!/bin/bash
crontab <(crontab -l; echo "*/5 * * * Sun ~/lab4/1.bash")
