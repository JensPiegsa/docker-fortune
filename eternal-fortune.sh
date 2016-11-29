#!/bin/sh

set -e

if fortune $@ 2>&1 >/dev/null ; then
	if [ -z $DELAY ]; then
		DELAY=10
	fi

	if [ -z $LOGFILE ]; then
		while (true)
		do
			echo [`date`] `fortune $@`
			sleep $DELAY
		done
	else
		touch $LOGFILE
		while (true)
		do
			echo [`date`] `fortune $@` >> $LOGFILE
			sleep $DELAY
		done
	fi
else
	echo "Unsupported flag: $@"
	fortune --help
fi
