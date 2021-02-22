#! /bin/bash
while read line
do
    num=$((RANDOM%10))
    if (($num<=5))
	then
        echo $line >> train.txt
    elif (($num<=7))
	then
        echo $line >> val.txt
    else
        echo $line >> test.txt
	fi
done < list.txt
