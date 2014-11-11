# $OpenBSD: Makefile,v 1.1.1.1 2014/11/11 11:21:01 pirofti Exp $

PKG_ARCH =	*

COMMENT =	configuration header file shared by the SuiteSparse ports

VERSION =	4.3.1
DISTNAME =	SuiteSparse_config-${VERSION}
PKGNAME =	${DISTNAME:L}

CATEGORIES =	math

HOMEPAGE =	http://www.cise.ufl.edu/research/sparse/SuiteSparse_config/

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${HOMEPAGE}
WRKDIST =	${WRKDIR}/SuiteSparse_config

NO_BUILD =	Yes

do-install:
	${INSTALL_DATA} ${WRKSRC}/SuiteSparse_config.h ${PREFIX}/include

.include <bsd.port.mk>
