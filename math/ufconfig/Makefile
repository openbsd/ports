# $OpenBSD: Makefile,v 1.3 2013/03/11 11:23:56 espie Exp $

PKG_ARCH =	*

COMMENT =	configuration header file shared by the SuiteSparse ports

VERSION =	3.5.0
DISTNAME =	UFconfig-${VERSION}
PKGNAME =	${DISTNAME:L}

CATEGORIES =	math

HOMEPAGE =	http://www.cise.ufl.edu/research/sparse/UFconfig/

# LGPL
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${HOMEPAGE}
WRKDIST =	${WRKDIR}/UFconfig

NO_BUILD =	Yes

do-install:
	${INSTALL_DATA} ${WRKSRC}/UFconfig.h ${PREFIX}/include

.include <bsd.port.mk>
