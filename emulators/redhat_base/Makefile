# $OpenBSD: Makefile,v 1.2 2001/02/17 00:00:38 jasoni Exp $

PKGNAME=	redhat_base-6.2
CATEGORIES=	emulators
NEED_VERSION=	1.301
MASTER_SITES=	ftp://ftp.freesoftware.com/pub/linux/redhat/redhat-6.2/i386/RedHat/RPMS/
DISTFILES=	${RPM_SET1} ${RPM_SET2}
DIST_SUBDIR=	rpm
EXTRACT_ONLY=	

ONLY_FOR_ARCHS=	i386

MAINTAINER=	Jason Ish <jasoni@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

BUILD_DEPENDS=	rpm::misc/rpm

NO_BUILD=	Yes

PREFIX=		/usr/local/emul/redhat

RPMFLAGS=	--ignoreos --ignorearch --root ${PREFIX} --nodeps --noscripts \
		--excludedocs --replacepkgs --dbpath /var/lib/rpm
RPMDIR=		${FULLDISTDIR}

RPM_SET1=	setup-2.1.8-1.noarch.rpm \
		filesystem-1.3.5-1.noarch.rpm \
		basesystem-6.0-4.noarch.rpm

RPM_SET2=	ldconfig-1.9.5-16.i386.rpm \
		glibc-2.1.3-15.i386.rpm \
		termcap-10.2.7-9.noarch.rpm \
		libtermcap-2.0.8-20.i386.rpm \
		bash-1.14.7-22.i386.rpm \
		ncurses-5.0-11.i386.rpm \
		zlib-1.1.3-6.i386.rpm \
		fileutils-4.0-21.i386.rpm \
		binutils-2.9.5.0.22-6.i386.rpm \
		libstdc++-2.9.0-30.i386.rpm \
		sh-utils-2.0-5.i386.rpm \
		readline-2.2.1-6.i386.rpm \
		redhat-release-6.2-1.noarch.rpm \
		rpm-3.0.4-0.48.i386.rpm \
		XFree86-libs-3.3.6-20.i386.rpm \
		xpm-3.4k-2.i386.rpm \
		glib-1.2.6-3.i386.rpm \
		gtk+-1.2.6-7.i386.rpm \
		ld.so-1.9.5-13.i386.rpm \
		libc-5.3.12-31.i386.rpm

REMOVE_DIRS=	/tmp /var/tmp /usr/tmp /home /root /proc /dev /mnt /boot /opt
REMOVE_FILES=	/bin/df /bin/su /etc/exports /etc/group /etc/passwd \
		/etc/localtime /etc/motd /etc/printcap /etc/services \
		/etc/protocols /etc/securetty

pre-install:
	@mkdir -p ${PREFIX}
	@mkdir -p ${PREFIX}/var/lib/rpm

do-install:
# Initialize the RPM database.
	@rpm --initdb --root ${PREFIX} --dbpath /var/lib/rpm

# Install RPM's.  
# Redirect stderr for now b/c rpm tries to open /etc/mnttab which is not pretty.
	@for rpm in ${RPM_SET1}; do \
		rpm -Uvh ${RPMFLAGS} ${RPMDIR}/$$rpm 2> /dev/null; \
	done

	@for rpm in ${RPM_SET2}; do \
		rpm -Uvh ${RPMFLAGS} ${RPMDIR}/$$rpm 2> /dev/null; \
	done

# Get rid of some unnecessary files and directories.
	@for D in ${REMOVE_DIRS}; do \
		rm -rf ${PREFIX}/$$D; \
	done
	@for F in ${REMOVE_FILES}; do \
		rm ${PREFIX}/$$F; \
	done

# copy in ld.so.conf
	@${INSTALL_DATA} ${FILESDIR}/ld.so.conf ${PREFIX}/etc/ld.so.conf

# run elf2olf on a few binaries known not to run as elf
	@elf2olf -o linux ${PREFIX}/sbin/ldconfig
	@elf2olf -o linux ${PREFIX}/bin/rpm

# run ldconfig
	@chroot ${PREFIX} sbin/ldconfig

post-install:
	@find ${PREFIX} -perm -4000 -exec chmod u-s {} \;

.include <bsd.port.mk>
