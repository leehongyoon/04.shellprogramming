#!/bin/bash

USERLIST=user.list
cat $USERLIST | while read UNAME UPASS
do
    #echo "$UNAME : $UPASS"
    useradd $UNAME > /dev/null 2>& \
        && echo "[ OK ] $UNAME added." \ 
        || echo "[ FAIL ] $UNAME not added"
     echo $UPASS | passwd --stdin $UNAME > /dev/null 2>&1
         && echo "[ OK ] $UNAME passwd changed." \ 
         || echo "[ FAIL ] $UNAME passwd not changed."
done
