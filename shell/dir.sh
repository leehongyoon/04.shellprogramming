#!/bin/bash

echo -n "file"
read FILENAME

if [ -f $FILENAME ] ; then
    echo " [ OK ] 일반 파일입니다."
elif [ -d $FILENAME ] ; then
    echo " [ OK ] 디렉토리 파일입니다."
else
    echo "[ FIAL ] 파일 또는 디렉토리 파일이 아닙니다."
    exit 1 
fi