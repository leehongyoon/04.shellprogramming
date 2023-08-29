#!/bin/bash
#ex)nohup /root/

#Variable Definition
LOG=/var/log/messages
#TMP1=$(MKTEMP)
TMP1=/tme/tme1
TMP2=/tme/tme2
TMP3=/tme/tme3

egrep -i 'warn|fail|error|crit|alert|emerg' $LOG
while true
do
    sleep 10
    egrep -i 'warn|fail|error|crit|alert|emerg' $LOG > $TMP2
    diff $TMP1 $TMP2 > $TMP3 && continue
    mailx -s "[ WARN ] Log check" root < $TMP3
    egrep -i 'warn|fail|error|crit|alert|emerg' $LOG > $TMP1
done