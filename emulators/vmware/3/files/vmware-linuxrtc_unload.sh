#!/bin/sh
#	$OpenBSD: vmware-linuxrtc_unload.sh,v 1.3 2005/03/07 18:15:09 todd Exp $

dev=/dev/rtc
rm=/bin/rm

if [ -c $dev ]; then
	$rm $dev
fi

exit 0
