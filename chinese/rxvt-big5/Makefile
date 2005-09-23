# $OpenBSD: Makefile,v 1.3 2005/09/23 03:01:06 kevlo Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"color terminal emulator Linux binary"

PKGNAME=	zh-rxvt-big5-2.7.8p1
CATEGORIES=	chinese

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	ftp://linux.sinica.edu.tw/redhat/redhat-8.0/en/os/i386/RedHat/RPMS/
MASTER_SITES0=	ftp://linux.sinica.edu.tw/redhat/updates/8.0/en/os/i386/
MASTER_SITES1=	ftp://linux.sinica.edu.tw/redhat//updates/7.3/en/os/i386/
DISTFILES=	${RPMS}
EXTRACT_ONLY=

DIST_SUBDIR=	rpm

BUILD_DEPENDS=	:rpm->=3.0.6p1:misc/rpm
RUN_DEPENDS=	::emulators/redhat/base \
		::chinese/taipeifonts

NO_BUILD=	Yes
NO_REGRESS=	Yes

PREFIX=		${LOCALBASE}/emul/redhat

RPMDIR=		${FULLDISTDIR}

RPMS=		utempter-0.5.2-10.i386.rpm \
		shadow-utils-20000902-12.8.i386.rpm:0 \
		rxvt-2.7.8-4.i386.rpm:1

REMOVE_DIRS=	/usr/doc /usr/man /usr/share/doc 

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}
.for rpm in ${RPMS:S/:0//:S/:1//}
	@cd ${PREFIX}; ${LOCALBASE}/bin/rpm2cpio ${RPMDIR}/${rpm} | cpio -id
.endfor     

# Get rid of some unnecessary files and directories.
.for D in ${REMOVE_DIRS}
	@rm -rf ${PREFIX}/${D}
.endfor

post-install:
# remove setuid root bits
	@find ${PREFIX} -perm -4000 |xargs -r chmod u-s

# fix ownerships
	@find ${PREFIX} \( -user 37 -o -user 5041 -o -group 22 -o -group 37 \) -print|xargs -r chown -h root.wheel

.include <bsd.port.mk>
