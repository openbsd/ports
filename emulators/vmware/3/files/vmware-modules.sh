#!/bin/sh
#	$OpenBSD: vmware-modules.sh,v 1.1.1.1 2004/10/05 18:32:28 todd Exp $

modload=/sbin/modload
modunload=/sbin/modunload
prefix=@PREFIX@
lkmbase=$prefix/lib/vmware/modules
scriptbase=$prefix/libexec/vmware
sysctl=/sbin/sysctl

sl=`$sysctl -n kern.securelevel`

check_perms()
{
	if [ `id -u` -ne 0 ]; then
		echo "ERROR: You must be root to run this script."
		exit 1
	fi
}

check_securelevel()
{
if [ "$sl" -gt 0 ]; then
	echo "ERROR: The system's securelevel is currently $sl.  It must be"
	echo "       less than or equal to 0 to load kernel modules."
	echo "       Consult securelevel(7) and rc(8) for more information"
        echo "       on lowering the securelevel and its effects."
fi
}

load_modules()
{
	TMPFILE1=`mktemp /tmp/linuxrtc.XXXXXXXXXX` || exit 1
	TMPFILE2=`mktemp /tmp/vmmon.XXXXXXXXXX` || exit 1
	TMPFILE3=`mktemp /tmp/if_hub.XXXXXXXXXX` || exit 1
	$modload -e rtc_lkmentry -o $TMPFILE1 \
		-p $scriptbase-linuxrtc_load.sh $lkmbase/linuxrtc.o
	$modload -e vmmon_lkmentry -o $TMPFILE2 \
		-p $scriptbase-vmmon_load.sh $lkmbase/vmmon.o
	$modload -e vmnet_lkmentry -o $TMPFILE3 \
		-p $scriptbase-vmnet_load.sh $lkmbase/if_hub.o
}

unload_modules()
{
	$modunload -n linuxrtc -p $scriptbase-linuxrtc_unload.sh
	$modunload -n vmmon -p $scriptbase-vmmon_unload.sh
	$modunload -n vmnet -p $scriptbase-vmnet_unload.sh
}

check_perms
check_securelevel

case $1 in
	load)
		load_modules
		;;
	unload)
		unload_modules
		;;
	*)
		echo "usage: $0 $1 [ load | unload ]"
		exit 1
		;;
esac

exit 0
