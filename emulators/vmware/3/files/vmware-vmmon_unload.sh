#!/bin/sh
#	$OpenBSD: vmware-vmmon_unload.sh,v 1.1.1.1 2004/10/05 18:32:27 todd Exp $

dev=/dev/vmmon
rm=/bin/rm

if [ -c $dev ]; then
	$rm $dev
fi

exit 0
