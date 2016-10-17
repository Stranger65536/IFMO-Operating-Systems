#!/bin/bash
cat Xorg.0.log | sed 's/(II)/Information:/' | sed 's/(WW)/Warning:/' | sort > full.log
