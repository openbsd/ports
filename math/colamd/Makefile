# $OpenBSD: Makefile,v 1.11 2014/11/11 19:29:24 pirofti Exp $

COMMENT =	library for column approximate minimum degree ordering

DISTNAME =	COLAMD-2.9.0
PKGNAME =	${DISTNAME:L}
SHARED_LIBS +=  colamd	1.0
CATEGORIES =	math

HOMEPAGE =	http://www.cise.ufl.edu/research/sparse/colamd/

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	${HOMEPAGE}/
WRKDIST =	${WRKDIR}/COLAMD
WRKSRC =	${WRKDIST}/Source

BUILD_DEPENDS =	math/SuiteSparse_config
RUN_DEPENDS =	math/SuiteSparse_config

MAKE_ENV=	SHLIB_MAJOR=${LIBcolamd_VERSION:R} \
		SHLIB_MINOR=${LIBcolamd_VERSION:E}

CFLAGS +=	-I${WRKDIST}/Include -I${LOCALBASE}/include
FAKE_FLAGS =	LIBDIR=${LOCALBASE}/lib DEBUGLIBS=no

MAKE_FILE=	${FILESDIR}/Makefile

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/colamd
	${INSTALL_DATA} ${WRKDIST}/Include/colamd.h ${PREFIX}/include/colamd
.include <bsd.port.mk>
