#!/bin/bash


HOSTS=/etc/hosts
#HOSTS=hosts
#>$HOSTS
NET=192.168.10.10

IP1=$(ip addr show ens33 | grep 'inet ' | awk '{print $2}' | awk -F/ '{print $1}'

cat << EOF >> $HOSTS
#
# Linux Server List
#
EOF
for i in $(seq 10 50)
do
    [$i = $IP1 ] && continue    
    echo "$NET.$i linux$i.example.com linux$i" >> $HOSTS
done