# $OpenBSD: Makefile,v 1.15 2003/04/25 22:40:52 ish Exp $

COMMENT=	"Linux compatibility package based on RedHat 8.0"

PKGNAME=	redhat_base-8.0

MAINTAINER=	Jason Ish <ish@openbsd.org>

MASTER_SITES=	${MASTER_SITE_REDHAT:=redhat/linux/8.0/en/os/i386/RedHat/RPMS/}
MASTER_SITES0=	${MASTER_SITE_REDHAT:=redhat/linux/updates/8.0/en/os/i386/}

DISTFILES=	${RPMS}

RPMDIR=		${FULLDISTDIR}

RPMS=		glibc-2.3.2-4.80.6.i386.rpm:0 \
		glibc-common-2.3.2-4.80.6.i386.rpm:0 \
		termcap-11.0.1-13.noarch.rpm \
		libtermcap-2.0.8-31.i386.rpm \
		bash-2.05b-5.i386.rpm \
		ncurses-5.2-28.i386.rpm \
		zlib-1.1.4-4.i386.rpm \
		fileutils-4.1.9-11.i386.rpm \
		binutils-2.13.90.0.2-2.i386.rpm \
		compat-libstdc++-7.3-2.96.110.i386.rpm \
		libstdc++-3.2-7.i386.rpm \
		sh-utils-2.0.12-3.i386.rpm \
		readline-4.3-3.i386.rpm \
		rpm-4.1-1.06.i386.rpm \
		XFree86-libs-4.2.0-72.i386.rpm \
		glib-1.2.10-8.i386.rpm \
		gtk+-1.2.10-22.i386.rpm \
		libjpeg-6b-21.i386.rpm \
		libpng-1.2.2-8.i386.rpm:0 \
		fontconfig-2.0-3.i386.rpm \
		freetype-2.1.2-7.i386.rpm \
		expat-1.95.4-1.i386.rpm

REMOVE_DIRS=	/usr/doc /usr/info /usr/man /usr/share/doc /usr/share/zoneinfo
REMOVE_FILES=	/etc/localtime

PATCH_LIST=

NO_BUILD=	Yes
NO_REGRESS=	Yes

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
	@cp -p ${PREFIX}/lib/ld-2.3.2.so ${PREFIX}/usr/bin/ld-2.3.2-olf.so
	@elf2olf -o linux ${PREFIX}/usr/bin/ld-2.3.2-olf.so
	@perl ${FILESDIR}/fix-ldd.pl ${PREFIX}/usr/bin/ld-2.3.2-olf.so

# run ldconfig
	-chroot ${PREFIX} /sbin/ldconfig

post-install:
# remove setuid root bits
	@find ${PREFIX} -perm -4000 -exec chmod u-s {} \;

# Fix ownerships
	@find ${PREFIX} -user 5041 -exec chown -h root.wheel {} \;

.include <bsd.port.mk>
