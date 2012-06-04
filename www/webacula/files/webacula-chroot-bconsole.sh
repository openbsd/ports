#!/bin/sh
#
# make bconsole(8) available in Apache chroot(8)

# WARNING: /var/www/bin/sh , /var/www/usr/libexec/ld.so and
# /var/www/lib/* may be shared by other executables in the chroot(8)

if [ "$(id -u)" -ne 0 ]; then
	echo " *** Error: need root privileges to run this script"
	exit 1
fi

do_enable() {
	mkdir -p /var/www{${SYSCONFDIR}/bacula,/usr/lib,/usr/libexec,${LOCALBASE}/{lib,sbin}}
	cp -p ${LOCALBASE}/sbin/bconsole /var/www${LOCALBASE}/sbin
	cp -p ${SYSCONFDIR}/bacula/bconsole.conf /var/www${SYSCONFDIR}/bacula/
	for i in $(ldd ${LOCALBASE}/sbin/bconsole | grep 'lib/' | awk '{ print $7 }') ; do \
		cp -p $i /var/www$i
	done
	cp -p /bin/sh /var/www/bin/
	cp -p /usr/libexec/ld.so /var/www/usr/libexec/
	chown -R www /var/www${SYSCONFDIR}/bacula/ /var/www${LOCALBASE}/sbin/bconsole
	chmod 0500 /var/www${SYSCONFDIR}/bacula/
	chmod 0100 /var/www${LOCALBASE}/sbin/bconsole
	chmod 0400 /var/www${SYSCONFDIR}/bacula/bconsole.conf
}

do_disable() {
	rm -rf /var/www${SYSCONFDIR}/bacula \
		/var/www/usr/local/sbin/bconsole \
		/var/www/usr/libexec/ld.so \
		/var/www/bin/sh
	for i in $(ldd ${LOCALBASE}/sbin/bconsole | grep 'lib/' | awk '{ print $7 }') ; do \
		rm -f /var/www/$(echo $i | sed -e 's,\.so.*,,')*
	done
	rmdir /var/www{/etc,${LOCALBASE}/{lib,sbin},${LOCALBASE},/usr/lib,/usr/libexec,/usr} 2>/dev/null
}

case $1 in
enable)
	do_disable
	do_enable
	;;
disable)
	do_disable
	;;
*)
	echo "usage: ${0##*/} {enable|disable}"
	;;
esac
