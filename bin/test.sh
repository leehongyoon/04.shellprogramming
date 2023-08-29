#!/bin/bash

	#(출력화면)
	#10%|=>
    #20%|==>
    #30%|===>
    #40%|====>
    #.....
    #90%|=========>
    #100%|==========| complete

NUM=1

echo -ne "10% |"

while [ $NUM -le 5 ]
do
	echo -ne "="
	sleep 1	
	NUM=`expr $NUM + 1`
done
echo -ne '>\n'