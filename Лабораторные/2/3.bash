#!/bin/bash
grep -sho '[a-zA-Z]\{1,\}[a-zA-Z0-9]@[a-zA-Z]\{1,\}*\.[a-zA-Z\.]*' /etc/* > email.list
