# $OpenBSD: Makefile,v 1.17 2012/10/11 10:16:29 robert Exp $

COMMENT=	Linux compatibility package based on Fedora Core 4

PKGNAME=	fedora_base-10.0

# clean up after make plist:
#	- perl -pi -e "s,^\@lib ,," pkg/PLIST
SHARED_LIBS +=  cap                       2.10
SHARED_LIBS +=  blkid                     1.0
SHARED_LIBS +=  com_err                   2.1
SHARED_LIBS +=  e2p                       2.3
SHARED_LIBS +=  ext2fs                    2.4
SHARED_LIBS +=  ss                        2.0
SHARED_LIBS +=  uuid                      1.2

MASTER_SITES=	${MASTER_SITE_FEDORA:=10/}

DISTFILES=	${RPMS}

RPMDIR=		${FULLDISTDIR}

RPMS=		basesystem-10.0-1.noarch.rpm \
		compat-libstdc++-296-2.96-141.i386.rpm \
		compat-libstdc++-33-3.2.3-64.i386.rpm \
		coreutils-6.12-20.fc10.i386.rpm \
		db4-4.7.25-7.fc10.i386.rpm \
		e2fsprogs-libs-1.41.4-6.fc10.i386.rpm \
		elfutils-0.142-1.fc10.i386.rpm \
		fedora-release-10-1.noarch.rpm \
		filesystem-2.4.19-1.fc10.i386.rpm \
		freetype-2.3.7-3.fc10.i386.rpm \
		glibc-2.9-3.i386.rpm \
		glibc-common-2.9-3.i386.rpm \
		info-4.12-4.fc10.i386.rpm \
		keyutils-libs-1.2-3.fc9.i386.rpm \
		libacl-2.2.47-3.fc10.i386.rpm \
		libattr-2.4.43-2.fc10.i386.rpm \
		libcap-2.10-2.fc10.i386.rpm \
		libgcc-4.3.2-7.i386.rpm \
		libidn-0.6.14-8.i386.rpm \
		libselinux-2.0.78-1.fc10.i386.rpm \
		libsepol-2.0.33-1.fc10.i386.rpm \
		libstdc++-4.3.2-7.i386.rpm \
		setserial-2.17-22.fc9.i386.rpm \
		setup-2.7.4-4.fc10.noarch.rpm \
		fontconfig-2.6.0-3.fc10.i386.rpm \
		expat-2.0.1-5.i386.rpm \
		zlib-1.2.3-18.fc9.i386.rpm \
		libfontenc-1.0.4-6.fc10.i386.rpm \
		libFS-1.0.1-2.fc10.i386.rpm \
		libICE-1.0.4-4.fc10.i386.rpm \
		libSM-1.1.0-2.fc10.i386.rpm \
		libX11-1.1.5-4.fc10.i386.rpm \
		libXau-1.0.4-1.fc10.i386.rpm \
		libXaw-1.0.4-3.fc10.i386.rpm \
		libxcb-1.1.91-5.fc10.i386.rpm \
		libXcomposite-0.4.0-5.fc10.i386.rpm \
		libXcursor-1.1.9-3.fc10.i386.rpm \
		libXdamage-1.1.1-4.fc9.i386.rpm \
		libXdmcp-1.0.2-6.fc10.i386.rpm \
		libXevie-1.0.2-4.fc10.i386.rpm \
		libXext-1.0.4-1.fc9.i386.rpm \
		libXfixes-4.0.3-4.fc10.i386.rpm \
		libXfont-1.3.3-1.fc10.i386.rpm \
		libXft-2.1.13-1.fc10.i386.rpm \
		libXi-1.1.3-4.fc9.i386.rpm \
		libXinerama-1.0.3-2.fc10.i386.rpm \
		libxkbfile-1.0.4-5.fc9.i386.rpm \
		libXmu-1.0.4-1.fc9.i386.rpm \
		libXp-1.0.0-11.fc9.i386.rpm \
		libXpm-3.5.7-4.fc9.i386.rpm \
		libXrandr-1.2.3-1.fc10.i386.rpm \
		libXrender-0.9.4-3.fc9.i386.rpm \
		libXres-1.0.3-5.fc10.i386.rpm \
		libXScrnSaver-1.1.3-1.fc10.i386.rpm \
		libXt-1.0.5-1.fc10.i386.rpm \
		libXTrap-1.0.0-6.fc10.i386.rpm \
		libXtst-1.0.3-3.fc9.i386.rpm \
		libXv-1.0.4-1.fc10.i386.rpm \
		libXvMC-1.0.4-5.fc10.i386.rpm \
		libXxf86dga-1.0.2-3.fc10.i386.rpm \
		libXxf86misc-1.0.1-6.fc10.i386.rpm \
		libXxf86vm-1.0.2-1.fc10.i386.rpm \
		mesa-libGLw-6.5.1-5.fc9.i386.rpm

REMOVE_DIRS=	boot dev etc/fonts home initrd media root tmp var/log var/run var/tmp \
		usr/local usr/tmp usr/share/fonts etc/fonts

REMOVE_FILES=	bin/df bin/su etc/exports etc/group etc/localtime \
		etc/motd etc/passwd etc/printcap etc/services \
		etc/protocols usr/bin/fc-cache usr/share/man/man1/fc-cache.1.gz

ADD_DIRS=	usr/X11R6/share usr/X11R6/man usr/X11R6/lib/tls \
		usr/X11R6/include usr/X11R6/bin

PATCH_LIST=

do-install:
	${INSTALL_DATA_DIR} ${FEDORADIR}
.for rpm in ${RPMS:S/:0//}
	cd ${FEDORADIR}; rpm2cpio ${RPMDIR}/${rpm} | ${LOCALBASE}/bin/gcpio -id
.endfor

# get rid of some unnecessary files and directories
.for D in ${REMOVE_DIRS}
	rm -rf ${FEDORADIR}/${D}
.endfor
.for F in ${REMOVE_FILES}
	rm -f ${FEDORADIR}/${F}
.endfor
.for D in ${ADD_DIRS}
	mkdir -p ${FEDORADIR}/${D}
.endfor

	ln -s ${SYSCONFDIR}/fonts ${FEDORADIR}/etc/fonts

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
	echo -e '/lib\n/usr/lib\n${X11BASE}/lib' >> \
		${FEDORADIR}/etc/ld.so.conf
	touch ${FEDORADIR}/etc/ld.so.cache
	mv ${FEDORADIR}/sbin/ldconfig ${FEDORADIR}/sbin/ldconfig.bin
	${INSTALL_SCRIPT} ${FILESDIR}/ldconfig ${FEDORADIR}/sbin
	cp -p ${FEDORADIR}/lib/ld-2.9.so ${FEDORADIR}/usr/bin/ld-2.9-elf.so
	perl ${FILESDIR}/fix-ldd.pl ${FEDORADIR}/usr/bin/ld-2.9-elf.so

# better safe than sorry
	find ${FEDORADIR} -perm -4000 | xargs -r chmod u-s
	find ${FEDORADIR} \( -user 37 -o -user 5041 -o -group 37 \) -print | \
		xargs -r chown -h root:wheel

.include <bsd.port.mk>
