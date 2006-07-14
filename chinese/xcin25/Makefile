# $OpenBSD: Makefile,v 1.3 2006/07/14 19:06:46 steven Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"Chinese input method Linux binary"

PKGNAME=	zh-xcin25-2.5.3p0
CATEGORIES=	chinese

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://download.fedoralegacy.org/redhat/8.0/os/i386/
DISTFILES=	${RPMS}
EXTRACT_ONLY=

DIST_SUBDIR=	rpm

BUILD_DEPENDS=	:rpm->=3.0.6p1:misc/rpm
RUN_DEPENDS=	::chinese/rxvt-big5

NO_BUILD=	Yes
NO_REGRESS=	Yes

PREFIX=		${LOCALBASE}/emul/redhat

RPMDIR=		${FULLDISTDIR}

RPMS=		db4-4.0.14-14.i386.rpm \
		libtabe-0.2.6-1.i386.rpm \
		xcin-2.5.3.pre3-6.i386.rpm

REMOVE_DIRS=	/usr/doc /usr/man /usr/share/doc 

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}
.for rpm in ${RPMS}
	@cd ${PREFIX}; ${LOCALBASE}/bin/rpm2cpio ${RPMDIR}/${rpm} | cpio -id
.endfor     

# Get rid of some unnecessary files and directories.
.for D in ${REMOVE_DIRS}
	@rm -rf ${PREFIX}/${D}
.endfor

.include <bsd.port.mk>
