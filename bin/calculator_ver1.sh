#!/bin/bash

Error(){
        echo "[ FIAL ] 잘못된 번호를 입력했습니다"
        exit 1
}

echo -n "Enter A : "
read A1

echo -n "Enter B : "
read B1

cat << EOF
==============================================
(1) +    (2) -   (3) x   (4) /
==============================================
EOF
echo -n "Enter your choice? (1|2|3|4): "
read CHOICE

case $CHOICE in
        1) echo "$A1 + $B1 = $(expr $A1 + $B1)"  ;;
        2) echo "$A1 - $B1 = $(expr $A1 - $B1)"  ;;
        3) echo "$A1 x $B1 = $(expr $A1 \* $B1)" ;;
        4) echo "$A1 / $B1 = $(expr $A1 / $B1)"  ;;
        *) echo "Error"
       exit  ;;
esac