#!/bin/sh
#	$OpenBSD: vmware-vmmon_unload.sh,v 1.3 2005/03/07 18:15:09 todd Exp $

dev=/dev/vmmon
rm=/bin/rm

if [ -c $dev ]; then
	$rm $dev
fi

exit 0
