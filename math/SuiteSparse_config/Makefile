# $OpenBSD: Makefile,v 1.2 2014/11/18 08:07:33 pirofti Exp $

COMMENT =	configuration header and library shared by SuiteSparse ports

VERSION =	4.3.1
REVISION =	0
DISTNAME =	SuiteSparse_config-${VERSION}
PKGNAME =	${DISTNAME:L}

SHARED_LIBS +=	suitesparseconfig	0.0

CATEGORIES =	math

HOMEPAGE =	http://www.cise.ufl.edu/research/sparse/SuiteSparse_config/

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${HOMEPAGE}
WRKDIST =	${WRKDIR}/SuiteSparse_config

NO_TEST =	Yes

MAKE_FILE=	${FILESDIR}/Makefile
MAKE_ENV=	SHLIB_MAJOR=${LIBsuitesparseconfig_VERSION:R} \
		SHLIB_MINOR=${LIBsuitesparseconfig_VERSION:E}

FAKE_FLAGS=	LIBDIR=${LOCALBASE}/lib DEBUGLIBS=no

post-install:
	${INSTALL_DATA} ${WRKSRC}/SuiteSparse_config.h ${PREFIX}/include

.include <bsd.port.mk>
