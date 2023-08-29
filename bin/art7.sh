#!/bin/bash

# 로또 번호 생성기

DEF=1
echo -n "로또 자동 선택기 (1|2|3|4|5) : "
read SET
echo "----------------------- Lotto -----------------------"
while [ $SET -ge $DEF ]

do
NUM=1
 while [ 6 -ge $NUM ]

 do
     LOTTO[$NUM]=`expr $RANDOM % 45`
     if [ ${LOTTO[$NUM]} -eq 0 ]; then
         LOTTO[$NUM]=45
     fi
     X=`expr $NUM - 1`

     if [ $X -eq 0 ]; then
         NUM=`expr $NUM + 1`
     else
     while [ $X -ge 1 ]
     do
         if [ ${LOTTO[$NUM]} -ne ${LOTTO[$X]} ]; then

             if [ $X -eq 1 ]; then
                 NUM=`expr $NUM + 1`

                 X=`expr $X - 1`
             else
             X=`expr $X - 1`
             fi
         else
             X=0
         fi
     done
     fi
 done
echo -e "자동 $DEF : ${LOTTO[1]}\t${LOTTO[2]}\t${LOTTO[3]}\t${LOTTO[4]}\t${LOTTO[5]}\t${LOTTO[6]}"
DEF=`expr $DEF + 1`
done
echo "-----------------------------------------------------"