# $OpenBSD: Makefile,v 1.11 2001/07/11 00:34:02 brad Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"Linux compatibility package based on RedHat 6.2"

PKGNAME=	redhat_base-6.2p2
CATEGORIES=	emulators
NEED_VERSION=	1.413
MASTER_SITES=	ftp://ftp.redhat.com/pub/redhat/linux/%SUBDIR%/ \
		ftp://sunsite.ualberta.ca/pub/unix/Linux/redhat/%SUBDIR%/ \
		ftp://ftp.sourceforge.net/pub/mirrors/redhat/redhat/linux/%SUBDIR%/
MASTER_SITE_SUBDIR= 6.2/en/os/i386/RedHat/RPMS
MASTER_SITES0=	ftp://updates.redhat.com/6.2/en/os/i386/ \
		ftp://sunsite.ualberta.ca/pub/unix/Linux/redhat/updates/6.2/en/os/i386/ \
		ftp://ftp.sourceforge.net/pub/mirrors/redhat/redhat/linux/updates/6.2/en/os/i386/
DISTFILES=	${RPM_SET1} ${RPM_SET2}
DIST_SUBDIR=	rpm
EXTRACT_ONLY=	

BUILD_DEPENDS=	rpm::misc/rpm

MAINTAINER=	Jason Ish <jasoni@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

NO_BUILD=	Yes

PREFIX=		${LOCALBASE}/emul/redhat

RPM=		${LOCALBASE}/bin/rpm
RPMFLAGS=	--ignoreos --ignorearch --root ${PREFIX} --nodeps --noscripts \
		--excludedocs --replacepkgs --dbpath /var/lib/rpm
RPMDIR=		${FULLDISTDIR}

RPM_SET1=	setup-2.1.8-1.noarch.rpm \
		filesystem-1.3.5-1.noarch.rpm \
		basesystem-6.0-4.noarch.rpm

RPM_SET2=	ldconfig-1.9.5-16.i386.rpm \
		glibc-2.1.3-22.i386.rpm:0 \
		termcap-10.2.7-9.noarch.rpm \
		libtermcap-2.0.8-20.i386.rpm \
		bash-1.14.7-23.6x.i386.rpm:0 \
		ncurses-5.0-12.i386.rpm:0 \
		zlib-1.1.3-6.i386.rpm \
		fileutils-4.0-21.i386.rpm \
		binutils-2.9.5.0.22-6.i386.rpm \
		libstdc++-2.9.0-30.i386.rpm \
		sh-utils-2.0-5.i386.rpm \
		readline-2.2.1-6.i386.rpm \
		redhat-release-6.2-1.noarch.rpm \
		rpm-4.0.2-6x.i386.rpm:0 \
		XFree86-libs-3.3.6-20.i386.rpm \
		xpm-3.4k-2.i386.rpm \
		glib-1.2.6-3.i386.rpm \
		gtk+-1.2.6-7.i386.rpm \
		ld.so-1.9.5-13.i386.rpm \
		libc-5.3.12-31.i386.rpm \
		libjpeg-6b-10.i386.rpm \
		libpng-1.0.5-3.i386.rpm

REMOVE_DIRS=	/tmp /var/tmp /usr/tmp /home /root /proc /dev /mnt /boot /opt
REMOVE_FILES=	/bin/df /bin/su /etc/exports /etc/group /etc/passwd \
		/etc/localtime /etc/motd /etc/printcap /etc/services \
		/etc/protocols /etc/securetty

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}
	${INSTALL_DATA_DIR} ${PREFIX}/var/lib/rpm

do-install:
# Initialize the RPM database.
	@${RPM} --initdb --root ${PREFIX} --dbpath /var/lib/rpm

# Install RPM's.  
# Redirect stderr for now because rpm tries to open /etc/mnttab which 
# is not pretty.

.for rpm in ${RPM_SET1}
	@${RPM} -Uvh ${RPMFLAGS} ${RPMDIR}/${rpm} 2> /dev/null
.endfor

.for rpm in ${RPM_SET2:S/:0//}
	@${RPM} -Uvh ${RPMFLAGS} ${RPMDIR}/${rpm} 2> /dev/null
.endfor

# Get rid of some unnecessary files and directories.
.for D in ${REMOVE_DIRS}
	@rm -rf ${PREFIX}/${D}
.endfor
.for F in ${REMOVE_FILES}
	@rm ${PREFIX}/${F}
.endfor

# copy in ld.so.conf
	${INSTALL_DATA} ${FILESDIR}/ld.so.conf ${PREFIX}/etc

# run elf2olf on a few binaries known not to run as elf
	@elf2olf -o linux ${PREFIX}/sbin/ldconfig
	@elf2olf -o linux ${PREFIX}/bin/rpm

# run ldconfig
	-chroot ${PREFIX} /sbin/ldconfig

post-install:
# remove setuid root bits
	@find ${PREFIX} -perm -4000 -exec chmod u-s {} \;

.include <bsd.port.mk>
