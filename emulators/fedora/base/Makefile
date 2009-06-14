# $OpenBSD: Makefile,v 1.9 2009/06/14 17:01:56 jsg Exp $

COMMENT=	Linux compatibility package based on Fedora Core 4

PKGNAME=	fedora_base-4.0p5
# clean up after make plist:
#	- perl -pi -e "s,^\@lib ,," pkg/PLIST
#	- change the 2nd LIBXaw_version to LIBXaw7_version in pkg/PLIST
SHARED_LIBS=	FS	6.0 \
		GLw	1.0 \
		I810XvMC 1.0 \
		ICE	6.3 \
		OSMesa	4.0 \
		SM	6.0 \
		X11	6.2 \
		XRes	1.0 \
		XTrap	6.4 \
		Xaw	6.1 \
		Xaw7	7.0 \
		Xcomposite 1.0 \
		Xdamage	1.0 \
		Xevie	1.0 \
		Xext	6.4 \
		Xfixes	3.0 \
		Xfont	1.5 \
		Xft	1.1 \
		Xi	6.0 \
		Xinerama 1.0 \
		Xmu	6.2 \
		Xmuu	1.0 \
		Xp	6.2 \
		Xpm	4.11 \
		Xrandr	2.0 \
		Xss	1.0 \
		Xt	6.0 \
		Xtst	6.1 \
		Xv	1.0 \
		XvMC	1.0 \
		Xxf86dga 1.0 \
		Xxf86misc 1.1 \
		Xxf86rush 1.0 \
		Xxf86vm	1.0 \
		dps	1.0 \
		dpstk	1.0 \
		fontenc	1.0 \
		form	5.4 \
		formw	5.4 \
		history	5.0 \
		menu	5.4 \
		menuw	5.4 \
		ncurses	5.4 \
		ncursesw 5.4 \
		panel	5.4 \
		panelw	5.4 \
		psres	1.0 \
		readline 5.0 \
		xkbfile	1.0 \
		xkbui	1.0

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

MASTER_SITES=	${MASTER_SITE_FEDORA:=4/i386/os/Fedora/RPMS/}
MASTER_SITES0=	${MASTER_SITE_FEDORA:=updates/4/i386/}

DISTFILES=	${RPMS}

BUILD_DEPENDS=	:gcpio-*:archivers/gcpio

RPMDIR=		${FULLDISTDIR}

RPMS=		atk-1.9.1-1.i386.rpm \
		bash-3.0-31.i386.rpm \
		binutils-2.15.94.0.2.2-2.1.i386.rpm:0 \
		compat-libstdc++-296-2.96-132.fc4.i386.rpm \
		compat-libstdc++-33-3.2.3-47.fc4.i386.rpm \
		expat-1.95.8-6.i386.rpm \
		file-4.16-fc4.1.i386.rpm:0 \
		fontconfig-2.2.3-13.i386.rpm \
		freetype-2.1.9-2.i386.rpm \
		gdk-pixbuf-0.22.0-18.fc4.2.i386.rpm:0 \
		glib-1.2.10-16.i386.rpm \
		glib2-2.6.6-1.i386.rpm:0 \
		glibc-2.3.6-3.i386.rpm:0 \
		glibc-common-2.3.6-3.i386.rpm:0 \
		gtk+-1.2.10-39.i386.rpm \
		gtk2-2.6.10-2.fc4.4.i386.rpm:0 \
		libacl-2.2.32-1.FC4.2.i386.rpm:0 \
		libattr-2.4.24-1.FC4.1.i386.rpm:0 \
		libgcc-4.0.2-8.fc4.i386.rpm:0 \
		libjpeg-6b-34.i386.rpm \
		libpng-1.2.8-2.i386.rpm \
		libstdc++-4.0.2-8.fc4.i386.rpm:0 \
		libtermcap-2.0.8-41.i386.rpm \
		libtiff-3.7.1-6.fc4.3.i386.rpm:0 \
		libxml2-2.6.20-1.FC4.i386.rpm:0 \
		ncurses-5.4-19.fc4.i386.rpm:0 \
		pango-1.8.1-2.i386.rpm \
		readline-5.0-3.i386.rpm \
		termcap-5.4-7fc4.noarch.rpm:0 \
		xorg-x11-deprecated-libs-6.8.2-37.FC4.49.2.1.i386.rpm:0 \
		xorg-x11-libs-6.8.2-37.FC4.49.2.1.i386.rpm:0 \
		zlib-1.2.2.2-5.fc4.i386.rpm:0

REMOVE_DIRS=	usr/X11R6/man /usr/doc /usr/info /usr/man /usr/share/doc \
		/usr/share/man /usr/share/zoneinfo
REMOVE_FILES=	/etc/localtime

PATCH_LIST=

do-install:
	${INSTALL_DATA_DIR} ${FEDORADIR}
.for rpm in ${RPMS:S/:0//}
	cd ${FEDORADIR}; rpm2cpio ${RPMDIR}/${rpm} | gcpio -idm --quiet
.endfor
# fix gcpio -d creating dirs with mode 700
	find ${FEDORADIR} -type d -perm 700 | xargs -r chmod 755

# get rid of some unnecessary files and directories
.for D in ${REMOVE_DIRS}
	rm -rf ${FEDORADIR}/${D}
.endfor
.for F in ${REMOVE_FILES}
	rm -f ${FEDORADIR}/${F}
.endfor

	mkdir ${FEDORADIR}/dev; \
		ln -s /dev/console ${FEDORADIR}/dev/tty0; \
		ln -s /dev/ttyC0 ${FEDORADIR}/dev/tty1; \
		ln -s /dev/ttyC1 ${FEDORADIR}/dev/tty2; \
		ln -s /dev/ttyC2 ${FEDORADIR}/dev/tty3; \
		ln -s /dev/ttyC3 ${FEDORADIR}/dev/tty4; \
		ln -s /dev/ttyC4 ${FEDORADIR}/dev/tty5; \
		ln -s /dev/sound ${FEDORADIR}/dev/dsp; \
		ln -s /dev/null ${FEDORADIR}/dev/null

# fix up the loader
	cd ${FEDORADIR} && ${PATCH} -p0 --forward --quiet -E < \
		${PATCHDIR}/patch-ldd
	${INSTALL_DATA} ${FILESDIR}/ld.so.conf ${FEDORADIR}/etc
	mv ${FEDORADIR}/sbin/ldconfig ${FEDORADIR}/sbin/ldconfig.bin
	${INSTALL_SCRIPT} ${FILESDIR}/ldconfig ${FEDORADIR}/sbin
	cp -p ${FEDORADIR}/lib/ld-2.3.6.so ${FEDORADIR}/usr/bin/ld-2.3.6-elf.so
	perl ${FILESDIR}/fix-ldd.pl ${FEDORADIR}/usr/bin/ld-2.3.6-elf.so

# need old linuxthreads libraries
	rm ${FEDORADIR}/lib/libpthread*
	mv ${FEDORADIR}/lib/obsolete/linuxthreads/* ${FEDORADIR}/lib
	rm -fr ${FEDORADIR}/lib/obsolete
# fix fontconfig search path
	cd ${FEDORADIR}/etc/fonts && ${PATCH} -p0 --forward --quiet -E < \
		${PATCHDIR}/patch-etc_fonts_fonts_conf
# better safe than sorry
	find ${FEDORADIR} -perm -4000 | xargs -r chmod u-s
	find ${FEDORADIR} \( -user 37 -o -user 5041 -o -group 37 \) -print | \
		xargs -r chown -h root:wheel

.include <bsd.port.mk>
