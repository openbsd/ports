# $OpenBSD: Makefile,v 1.2 2010/11/01 09:35:09 steven Exp $

PKG_ARCH =	*

COMMENT =	configuration header file shared by the SuiteSparse ports

VERSION =	3.5.0
DISTNAME =	UFconfig-${VERSION}
PKGNAME =	${DISTNAME:L}

CATEGORIES =	math

HOMEPAGE =	http://www.cise.ufl.edu/research/sparse/UFconfig/

# LGPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${HOMEPAGE}
WRKDIST =	${WRKDIR}/UFconfig

NO_BUILD =	Yes

do-install:
	${INSTALL_DATA} ${WRKSRC}/UFconfig.h ${PREFIX}/include

.include <bsd.port.mk>
