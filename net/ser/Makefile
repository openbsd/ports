# $OpenBSD: Makefile,v 1.1.1.1 2003/01/15 17:24:17 jakob Exp $

COMMENT=	SIP Express Router

VERSION=	0.8.10
DISTNAME=	ser-${VERSION}_src
PKGNAME=	ser-${VERSION}
CATEGORIES=	net

MASTER_SITES+=	ftp://ftp.berlios.de/pub/ser/${VERSION}/src/

HOMEPAGE=	http://www.iptel.org/ser/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# This port currently only works with archs supporting dynamic loading
ONLY_FOR_ARCHS= alpha i386 m68k powerpc sparc sparc64

WRKDIST=	${WRKDIR}/ser-${VERSION}

USE_GMAKE=	Yes

ALL_TARGET=	all ser.cfg

LIB_DEPENDS=	mysqlclient.10:mysql-client-3.23.*:databases/mysql \
		expat.2::textproc/expat

do-install:
	cd ${WRKDIST}; ${MAKE_PROGRAM} PREFIX=${WRKINST}${TRUEPREFIX} install

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ser
	${INSTALL_DATA} ${WRKDIST}/ser.cfg ${PREFIX}/share/examples/ser

.include <bsd.port.mk>
