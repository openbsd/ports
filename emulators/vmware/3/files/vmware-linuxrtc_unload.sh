#!/bin/sh
#	$OpenBSD: vmware-linuxrtc_unload.sh,v 1.1.1.1 2004/10/05 18:32:28 todd Exp $

dev=/dev/rtc
rm=/bin/rm

if [ -c $dev ]; then
	$rm $dev
fi

exit 0
