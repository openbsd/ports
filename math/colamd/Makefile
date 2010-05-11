# $OpenBSD: Makefile,v 1.1.1.1 2010/05/11 17:11:32 pirofti Exp $

COMMENT =	library for column approximate minimum degree ordering

DISTNAME =	COLAMD-2.7.2
PKGNAME = ${DISTNAME:L}
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
MASTER_SITES0 =	${HOMEPAGE}../UFconfig/
DISTFILES =	${DISTNAME}${EXTRACT_SUFX} UFconfig-3.0.0.tar.gz:0
WRKDIST =	${WRKDIR}/COLAMD
WRKSRC =	${WRKDIST}/Source


MAKE_ENV=	SHLIB_MAJOR=${LIBcolamd_VERSION:R} \
		SHLIB_MINOR=${LIBcolamd_VERSION:E}

CFLAGS +=	-I${WRKDIST}/Include -I${WRKDIR}/UFconfig
FAKE_FLAGS =	LIBDIR=${LOCALBASE}/lib DEBUGLIBS=no

MAKE_FILE=	${FILESDIR}/Makefile

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/colamd
	${INSTALL_DATA} ${WRKDIST}/Include/colamd.h ${PREFIX}/include/colamd
	${INSTALL_DATA} ${WRKDIR}/UFconfig/UFconfig.h ${PREFIX}/include/colamd
.include <bsd.port.mk>
