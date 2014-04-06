#!/bin/ksh
#
# make rrdtool(1) available in webserver chroot(8): copy in library
# dependencies and generate barebones pango/fontconfig/pango configuration

# WARNING: /var/www/usr/libexec/ld.so and /var/www/lib/* may be shared
# by other executables in the chroot(8)

if [ "$(id -u)" -ne 0 ]; then
	echo " *** Error: need root privileges to run this script"
	exit 1
fi

do_enable() {
	mkdir -p /var/www{/etc/{pango,fonts/TTF},/usr/lib,/usr/libexec,${LOCALBASE}/bin,${X11BASE}/lib,/cache/fontconfig}
	cp -p ${LOCALBASE}/bin/rrdtool /var/www${LOCALBASE}/bin
	for i in $(ldd ${LOCALBASE}/bin/rrdtool | grep 'lib/' | awk '{ print $7 }') ; do \
		cp -p $i /var/www/usr/lib/
	done
	cp -p ${LOCALBASE}/lib/pango/*/modules/pango-basic-fc.so /var/www/usr/lib/
	cp -p /usr/libexec/ld.so /var/www/usr/libexec/
	cp -p /usr/X11R6/lib/X11/fonts/TTF/DejaVuSans.ttf /var/www/etc/fonts/TTF
	cat << EOF > /var/www/etc/fonts/fonts.conf
<?xml version="1.0"?>
<!DOCTYPE fontconfig SYSTEM "fonts.dtd">
<fontconfig>
	<dir>/etc/fonts/TTF</dir>
	<cachedir>/cache/fontconfig</cachedir>
</fontconfig>
EOF
	cat << EOF > /var/www/etc/pango/pango.modules
/usr/lib/pango-basic-fc.so BasicScriptEngineFc PangoEngineShape PangoRenderFc common:
EOF
}

do_disable() {
	rm -rf /var/www/usr/local/bin/rrdtool \
		/var/www/usr/libexec/ld.so \
		/var/www/etc/fonts \
		/var/www/etc/pango \
		/var/www/cache/fontconfig
	for i in $(ldd ${LOCALBASE}/bin/rrdtool | grep 'lib/' | awk '{ print $7 }') ; do \
		rm -f /var/www/usr/lib/$(basename $i | sed -e 's,\.so.*,,')*
	done
	rm -f /var/www/usr/lib/pango-basic-fc.so
	rmdir /var/www{/etc/fonts,${LOCALBASE}/bin,${LOCALBASE},/usr/lib,/usr/libexec,/usr} 2>/dev/null
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
