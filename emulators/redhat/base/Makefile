# $OpenBSD: Makefile,v 1.8 2002/05/13 20:34:11 jasoni Exp $

COMMENT=	"Linux compatibility package based on RedHat 6.2"

PKGNAME=	redhat_base-6.2p4

MAINTAINER=	Jason Ish <jasoni@openbsd.org>

MASTER_SITES=	${MASTER_SITE_REDHAT:=redhat/linux/6.2/en/os/i386/RedHat/RPMS/}
MASTER_SITES0=	${MASTER_SITE_REDHAT:=redhat/linux/updates/6.2/en/os/i386/}

DISTFILES=	${RPMS}

RPMDIR=		${FULLDISTDIR}

RPMS=		ldconfig-1.9.5-16.i386.rpm \
		glibc-2.1.3-23.i386.rpm:0 \
		termcap-10.2.7-9.noarch.rpm \
		libtermcap-2.0.8-20.i386.rpm \
		bash-1.14.7-23.6x.i386.rpm:0 \
		ncurses-5.0-12.i386.rpm:0 \
		zlib-1.1.3-25.6.i386.rpm:0 \
		fileutils-4.0-21.i386.rpm \
		binutils-2.9.5.0.22-6.i386.rpm \
		libstdc++-2.9.0-30.i386.rpm \
		sh-utils-2.0-5.i386.rpm \
		readline-2.2.1-6.i386.rpm \
		rpm-4.0.2-6x.i386.rpm:0 \
		XFree86-libs-3.3.6-29.i386.rpm:0 \
		xpm-3.4k-2.i386.rpm \
		glib-1.2.6-3.i386.rpm \
		gtk+-1.2.6-7.i386.rpm \
		ld.so-1.9.5-13.i386.rpm \
		libc-5.3.12-31.i386.rpm \
		libjpeg-6b-10.i386.rpm \
		libpng-1.0.5-3.i386.rpm

REMOVE_DIRS=	/usr/doc /usr/info /usr/man /usr/share/zoneinfo
REMOVE_FILES=	/etc/localtime

do-patch:

pre-install:
	@${INSTALL_DATA_DIR} ${PREFIX}

do-install:
.for rpm in ${RPMS:S/:0//}
	@cd ${PREFIX}; ${LOCALBASE}/bin/rpm2cpio ${RPMDIR}/${rpm} | cpio -id
.endfor

# Get rid of some unnecessary files and directories.
.for D in ${REMOVE_DIRS}
	@rm -rf ${PREFIX}/${D}
.endfor
.for F in ${REMOVE_FILES}
	@rm -f ${PREFIX}/${F}
.endfor

	@cd ${PREFIX} && ${PATCH} --forward --quiet -E < ${PATCHDIR}/patch-ldd

# copy in ld.so.conf
	${INSTALL_DATA} ${FILESDIR}/ld.so.conf ${PREFIX}/etc

# run elf2olf on a few binaries known not to run as elf
	@elf2olf -o linux ${PREFIX}/sbin/ldconfig
	@elf2olf -o linux ${PREFIX}/bin/rpm

# make a copy of ld.so, convert to olf and then patch
	@cp -p ${PREFIX}/lib/ld-2.1.3.so ${PREFIX}/usr/bin/ld-2.1.3-olf.so
	@elf2olf -o linux ${PREFIX}/usr/bin/ld-2.1.3-olf.so
	@perl ${FILESDIR}/fix-ldd.pl ${PREFIX}/usr/bin/ld-2.1.3-olf.so

# run ldconfig
	-chroot ${PREFIX} /sbin/ldconfig

post-install:
# remove setuid root bits
	@find ${PREFIX} -perm -4000 -exec chmod u-s {} \;

# Fix ownerships
	@find ${PREFIX} -user 5041 -exec chown -h root.wheel {} \;

.include <bsd.port.mk>
