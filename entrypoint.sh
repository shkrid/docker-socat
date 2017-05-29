#!/bin/sh

if [ "$2" == "" ]; then
	exec $@
else
	echo Connecting to $1:$2...
	echo socat -t 100000000 TCP4-LISTEN:$2,fork,reuseaddr TCP4:$1:$2
	exec socat -t 100000000 TCP4-LISTEN:$2,fork,reuseaddr TCP4:$1:$2
fi
