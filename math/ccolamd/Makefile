# $OpenBSD: Makefile,v 1.11 2014/11/11 19:30:52 pirofti Exp $

COMMENT =	library for column approximate minimum degree ordering

DISTNAME =	CCOLAMD-2.9.0
PKGNAME = 	${DISTNAME:L}

SHARED_LIBS +=  ccolamd	1.0
CATEGORIES =	math

HOMEPAGE =	http://www.cise.ufl.edu/research/sparse/ccolamd/

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	${HOMEPAGE}/
WRKDIST =	${WRKDIR}/CCOLAMD
WRKSRC =	${WRKDIST}/Source

BUILD_DEPENDS =	math/SuiteSparse_config
RUN_DEPENDS =	math/SuiteSparse_config

MAKE_ENV=	SHLIB_MAJOR=${LIBccolamd_VERSION:R} \
		SHLIB_MINOR=${LIBccolamd_VERSION:E}

CFLAGS +=	-I${WRKDIST}/Include -I${LOCALBASE}/include
FAKE_FLAGS =	LIBDIR=${LOCALBASE}/lib DEBUGLIBS=no

MAKE_FILE=	${FILESDIR}/Makefile

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/ccolamd
	${INSTALL_DATA} ${WRKDIST}/Include/ccolamd.h ${PREFIX}/include/ccolamd
.include <bsd.port.mk>
