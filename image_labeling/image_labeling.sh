#! /bin/bash
label=0
index=0
for i in * 
do
	if [ -d $i ] 
	then
		for j in $i/*
		do
			file=n${label}_${index}.${j##*.}
			mv "$j" "$i/${file}"
			echo n${label}/${file} ${label} >> list.txt
			((index++))
		done
		mv $i n${label}
		((label++))
		index=0
	fi
done
echo "DONE!"
