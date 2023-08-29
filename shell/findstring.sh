#!/bin/bash

if [ $# -ne 2 ]; then   
    echo "Usage: $0 <pattern><filename>"
    exit 1
fi
PATTERN=$1
FILE1=$2

grep -q $PATTERN $FILE1 >/dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "[ OK ] 패턴을 찾았다."
else
    echo "[ FIAL ] 패턴을 찾지 못했다."
fi