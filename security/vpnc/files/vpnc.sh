#! /bin/sh

TUN_IF=tun0
PHYS_IF=wi0
VPNGATEWAY=192.168.0.1

case "$1" in
start)
	dhclient ${PHYS_IF}
	DEFAULTROUTER=`route -n show -inet | grep default | awk '{ print $2 }'`
	${PREFIX}/sbin/vpnc || exit 1
	TUN_IP=`ifconfig ${TUN_IF} | grep netmask | awk '{ print $2 }'`
	route add -host ${VPNGATEWAY} ${DEFAULTROUTER}
	route delete default
	route add default -interface ${TUN_IP}
	;;
stop)
	route delete -host ${VPNGATEWAY}
	pkill vpnc
	pkill "dhclient ${PHYS_IF}"
	ifconfig ${PHYS_IF} down
	;;
*)
	echo "Usage: `basename $0` {start|stop}" >&2
	exit 1
	;;
esac

exit 0
