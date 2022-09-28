#!/bin/bash
echo `date`
#Name Priya Kumari
#CPU usage

cpu_idle=`top -b -n 1 | grep Cpu | awk '{print $8}'|cut -f 1 -d "."`
cpu_use=`expr 100 - $cpu_idle`
echo "cpu utilization: $cpu_use"

#Memory usage

MEMUSAGE=$(free | grep Mem |awk '{print $3/$2 * 100.0}')
echo "memory usage %: $MEMUSAGE"

#Swap usage


SWAPUSAGE=$(free | grep Swap |awk '{print $3/$2 * 100.0}')
echo "swap usage %:$SWAPUSAGE"
