# $OpenBSD: Makefile,v 1.3 2010/07/18 10:30:41 steven Exp $

COMMENT =	library for column approximate minimum degree ordering

DISTNAME =	CCOLAMD-2.7.2
PKGNAME = 	${DISTNAME:L}
REVISION =	0
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

# See bsd.lib.mk:162
.if ${MACHINE_ARCH:Mmips64*}
PKG_ARGS+=	-Dno_mips64=0
.else
PKG_ARGS+=	-Dno_mips64=1
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/ccolamd
	${INSTALL_DATA} ${WRKDIST}/Include/ccolamd.h ${PREFIX}/include/ccolamd
	${INSTALL_DATA} ${WRKDIR}/UFconfig/UFconfig.h ${PREFIX}/include/ccolamd
.include <bsd.port.mk>
