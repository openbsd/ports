#!/bin/sh

# Find out if lpd is already running. I guess you could also detect
# the existence of /var/run/printer.

killall -s lpd > /dev/null 2>&1

if [ $? != 0 ]; then
	echo -n ' printer';             @@PREFIX@@/libexec/lpd
fi
