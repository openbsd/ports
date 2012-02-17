# $OpenBSD: Makefile,v 1.8 2012/02/17 09:02:09 pirofti Exp $

COMMENT =	library for column approximate minimum degree ordering

DISTNAME =	COLAMD-2.7.4
PKGNAME =	${DISTNAME:L}
SHARED_LIBS +=  colamd	0.0
CATEGORIES =	math

HOMEPAGE =	http://www.cise.ufl.edu/research/sparse/colamd/

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =	${HOMEPAGE}/
WRKDIST =	${WRKDIR}/COLAMD
WRKSRC =	${WRKDIST}/Source

BUILD_DEPENDS =	math/ufconfig
RUN_DEPENDS =	math/ufconfig

MAKE_ENV=	SHLIB_MAJOR=${LIBcolamd_VERSION:R} \
		SHLIB_MINOR=${LIBcolamd_VERSION:E}

CFLAGS +=	-I${WRKDIST}/Include -I${LOCALBASE}/include
FAKE_FLAGS =	LIBDIR=${LOCALBASE}/lib DEBUGLIBS=no

MAKE_FILE=	${FILESDIR}/Makefile

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/colamd
	${INSTALL_DATA} ${WRKDIST}/Include/colamd.h ${PREFIX}/include/colamd
.include <bsd.port.mk>
