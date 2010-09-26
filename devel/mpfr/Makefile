# $OpenBSD: Makefile,v 1.6 2010/09/26 13:40:11 naddy Exp $

COMMENT=	library for multiple-precision floating-point computations

DISTNAME=	mpfr-2.3.2
SHARED_LIBS +=  mpfr                 0.2      # .2.2
CATEGORIES=	devel math
HOMEPAGE=	http://www.mpfr.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# (L)GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}${DISTNAME}/
DIST_SUBDIR=	${DISTNAME}

# no interlibrary dependency, though
LIB_DEPENDS=	gmp:gmp->=4.2.0:devel/gmp

SEPARATE_BUILD=	simple
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-gmp=${LOCALBASE}
REORDER_DEPENDENCIES=${PORTSDIR}/infrastructure/mk/automake.dep

# needed on sparc64 at least: the mpfr tests are insufficient without 
# gmp's internals

BUILD_DEPENDS=	:gmp->=4.2.0:devel/gmp:configure
pre-configure:
	ln -s ${WRKDIR}/devel/gmp/gmp-* ${WRKDIR}/gmp
	cd ${WRKDIR}/gmp && ${MAKE} fib_table.h mp_bases.h
CONFIGURE_ARGS+=--with-gmp-build=${WRKDIR}/gmp

.include <bsd.port.mk>
