#!/bin/bash
grep '^ACPI' -hs /var/log/* > errors.log
cat errors.log | grep '/[a-zA-Z0-9]'
