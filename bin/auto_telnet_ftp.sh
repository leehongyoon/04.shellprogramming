#!/bin/bash

# 1) 원격 접속후 백업 수행 -> auto_telnet.sh(tar CMD)
#tar CMD :tar czf /tmp/home_$(hostname).tar.gz/home
# 2)파일 전송 -> auto_ftp.sh


# 1) 원격 접속후 백업 수행 -> auto_telnet.sh(tar CMD)
#tar CMD :tar czf /tmp/home_$(hostname).tar.gz/home

IP1='192.168.10.20'
BACKUPFILE="home_$IP1.tar.gz"
UNAME='root'
UPASS='soldesk1.'
CmdBackup(){
        sleep 2     ; echo "$UNAME"
        sleep 0.3   ; echo "$UPASS"
        sleep 0.3   ; echo "tar czf /tmp/$BACKUPFILE /home"
        sleep 0.3   ; echo 'exit'
}
CmdBackup | telnet $IP1


#2) 파일 전송 -> auto_ftp.sh
UNAME='root'
UAPSS='soldesk1.'
ftp -n $IP1 << EOF
user $UNAME $UAPSS
cd /tmp
lcd /test
bin
hash
prompt
mget $BACKUPFILE
quit
EOF


IP2='192.168.10.30'
BACKUPFILE="home_$IP1.tar.gz"
UNAME='root'
UPASS='soldesk1.'
CmdBackup(){
        sleep 2     ; echo "$UNAME"
        sleep 0.3   ; echo "$UPASS"
        sleep 0.3   ; echo "tar czf /tmp/$BACKUPFILE /home"
        sleep 0.3   ; echo 'exit'
}
CmdBackup | telnet $IP2


#2) 파일 전송 -> auto_ftp.sh
UNAME='root'
UAPSS='soldesk1.'
ftp -n $IP2 << EOF
user $UNAME $UAPSS
cd /tmp
lcd /test
bin
hash
prompt
mget $BACKUPFILE
quit
EOF