#!/bin/bash

declare -A year92
declare -A year93

for(( i=1;i<=12;i++ ))
do
	year92[$i]=0
	year93[$i]=0
done

for(( i=1;i<=50;i++ ))
do
	roll=$(( RANDOM % 12 + 1 ))
	((year92[$roll]++))
	roll=$(( RANDOM % 12 + 1 ))
	((year93[$roll]++))
done

echo "Total born in 1992 :"
for(( i=1;i<=12;i++ ))
do
	echo -n "${year92[$i]}"
done
echo " "

echo "Total born in 1993 :"
for(( i=1;i<=12;i++ ))
do
        echo -n "${year93[$i]}"
done
echo " "

echo -e "Month\t\t1992\t\t1993"

for(( i=1;i<=12;i++ ))
do
case $i in
1)
	m="Jan" ;;
2)
	m="Feb" ;;
3)
	m="Mar" ;;
4)
	m="Apr" ;;
5)
	m="May" ;;
6)
	m="Jun" ;;
7)
	m="Jul" ;;
8)
	m="Aug" ;;
9)
	m="Sep" ;;
10)
	m="Oct" ;;
11)
	m="Nov" ;;
12)
	m="Dec" ;;
esac

echo -e "$m\t\t${year92[$i]}\t\t${year93[$i]}"
done


