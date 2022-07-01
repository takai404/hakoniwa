#!/bin/bash -ue

while read line; do
	ns=`echo $line | awk -F , '{print $1}'`
	name=`echo $line | awk -F , '{print $2}'`
	mac=`echo $line | awk -F , '{print $3}'`
	opt=""
	if [ -n "$ns" ]; then
		opt="-n $ns"
	fi
	echo ip $opt link set $name address $mac
	ip $opt link set $name address $mac
done
