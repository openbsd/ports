# $OpenBSD: Makefile,v 1.1.1.1 2010/05/11 17:14:01 pirofti Exp $

COMMENT =	library for column approximate minimum degree ordering

DISTNAME =	CCOLAMD-2.7.2
PKGNAME = ${DISTNAME:L}
SHARED_LIBS +=  ccolamd	0.0
CATEGORIES =	math

HOMEPAGE =	http://www.cise.ufl.edu/research/sparse/ccolamd/

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =	${HOMEPAGE}/
MASTER_SITES0 =	${HOMEPAGE}../UFconfig/
DISTFILES =	${DISTNAME}${EXTRACT_SUFX} UFconfig-3.0.0.tar.gz:0
WRKDIST =	${WRKDIR}/CCOLAMD
WRKSRC =	${WRKDIST}/Source


MAKE_ENV=	SHLIB_MAJOR=${LIBccolamd_VERSION:R} \
		SHLIB_MINOR=${LIBccolamd_VERSION:E}

CFLAGS +=	-I${WRKDIST}/Include -I${WRKDIR}/UFconfig
FAKE_FLAGS =	LIBDIR=${LOCALBASE}/lib DEBUGLIBS=no

MAKE_FILE=	${FILESDIR}/Makefile

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/ccolamd
	${INSTALL_DATA} ${WRKDIST}/Include/ccolamd.h ${PREFIX}/include/ccolamd
	${INSTALL_DATA} ${WRKDIR}/UFconfig/UFconfig.h ${PREFIX}/include/ccolamd
.include <bsd.port.mk>
