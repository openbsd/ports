#!/bin/sh
#	$OpenBSD: vmware-vmnet_unload.sh,v 1.1.1.1 2004/10/05 18:32:28 todd Exp $

dev=/dev/vmnet
rm=/bin/rm

for i in 0 1 2 3 
	do
	if [ -c "$dev""$i" ]; then
		$rm -f "$dev""$i"
	fi
	done

exit 0
