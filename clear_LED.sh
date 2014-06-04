#!/bin/bash
for i in `/usr/bin/seq 0 7` ; do
	/usr/local/bin/gpio write $i 0
done
