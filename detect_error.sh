#!/bin/bash

PATH=/dev/ttyACM
./clear_LED.sh

if [ $# -eq 2 ] ; then
	while [ true ] ; do
		if [ ! -c $PATH$1 ] || [ ! -c $PATH$2 ] ; then
			/usr/local/bin/gpio write 3 1
		fi
		/bin/sleep 60
	done
else
	echo specify ASIC ids
fi
