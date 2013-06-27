#!/bin/bash

#core0=$(sensors | grep Core\ 0 | awk '{print$3}')
#echo $core0

temp0=$(sensors | grep Core\ 0 | awk '{print$3}' |  awk -F "+" '{print$2}' | awk -F "°" '{print$1}')
temp1=$(sensors | grep Core\ 1 | awk '{print$3}' |  awk -F "+" '{print$2}' | awk -F "°" '{print$1}')
temp2=$(sensors | grep Core\ 2 | awk '{print$3}' |  awk -F "+" '{print$2}' | awk -F "°" '{print$1}')
temp3=$(sensors | grep Core\ 3 | awk '{print$3}' |  awk -F "+" '{print$2}' | awk -F "°" '{print$1}')
cpu=$(cat /proc/cpuinfo | grep 'model name' | head -n1 | awk -F ":" '{print$2}')


while [ true ]
do
	clear
	echo $cpu
	echo "Core 0:" $temp0"°C"
	echo "Core 1:" $temp1"°C"
	echo "Core 2:" $temp2"°C"
	echo "Core 3:" $temp3"°C"
	sleep 30
done

#if [ $temp1  > 20 ] 
#then
#	echo "HI"
#fi	