#! /bin/sh

PREFIX=@PREFIX@

if [ ! -e /proc/cpuinfo ]; then
	echo "ERROR: procfs must be mounted with the linux option in order"
	echo "       for VMware to run."
	echo "       Consult mount_procfs(8) for more information."
	exit 1
fi

exec ${PREFIX}/lib/vmware/bin/vmware-run "$@"

