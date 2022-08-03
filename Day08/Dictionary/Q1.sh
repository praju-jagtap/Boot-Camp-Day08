#!/bin/bash

declare -A dice
count=0
while(( $count != 10 ))
do
	random=$(( $RANDOM%6 + 1 ))
	dice[$random]=$((${dice[$random]} + 1 ))
	count=${dice[$random]};
done
	echo ${!dice[@]}
	echo ${dice[@]}
	max=${dice[1]}
	min=${dice[1]}
	for((i=1;i<7;i++))
	do
		if [[ ${dice[$i]} -lt $min ]]
		then
		min=${dice[$i]}
		a=$i;
		fi
			if [[ ${dice[$i]} -gt $max ]]
			then
			max=${dice[$i]}
			b=$i;
			fi
	done
echo "Maximum number of counts : " $b " = " $max "times ";
echo "Minimum number of counts : " $a " = " $min "times ";
