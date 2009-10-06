# $OpenBSD: Makefile,v 1.7 2009/10/06 15:50:09 sturm Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	color terminal emulator Linux binary

PKGNAME=	zh-rxvt-big5-2.7.8p2
CATEGORIES=	chinese

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://download.fedoralegacy.org/redhat/8.0/os/i386/
MASTER_SITES0=	http://download.fedoralegacy.org/redhat/8.0/updates/i386/
MASTER_SITES1=	http://download.fedoralegacy.org/redhat/7.3/updates/i386/
DISTFILES=	${RPMS}
EXTRACT_ONLY=

DIST_SUBDIR=	rpm

BUILD_DEPENDS=	::converters/rpm2cpio
RUN_DEPENDS=	::emulators/fedora/base \
		::chinese/taipeifonts

NO_BUILD=	Yes
NO_REGRESS=	Yes

PREFIX=		${LOCALBASE}/emul/fedora

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
