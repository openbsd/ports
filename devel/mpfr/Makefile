# $OpenBSD: Makefile,v 1.2 2006/11/03 20:16:12 espie Exp $

COMMENT=	"library for multiple-precision floating-point computations"

DISTNAME=	mpfr-2.2.0
PKGNAME=	${DISTNAME}p0
SHARED_LIBS +=  mpfr                 0.0      # .1.0
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
.for i in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16
PATCHFILES+=	patch$i
.endfor
PATCH_DIST_STRIP=-p1

# no interlibrary dependency, though
LIB_DEPENDS=	gmp:gmp->=4.1.0:devel/gmp

SEPARATE_BUILD=	simple
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-gmp=${LOCALBASE}
REORDER_DEPENDENCIES=${PORTSDIR}/infrastructure/mk/automake.dep

# make sure we do not pick up an installed version of libmpfr
REGRESS_FLAGS=	LIBTOOL="${LIBTOOL} ${LIBTOOL_FLAGS}" ${_lt_libs} \
		LDFLAGS="-L${WRKBUILD}/.libs -L${LOCALBASE}/lib"

# needed on sparc64 at least: the mpfr tests are insufficient without 
# gmp's internals

BUILD_DEPENDS=	:gmp->=4.1.0:devel/gmp:configure
pre-configure:
	ln -s ${WRKDIR}/devel/gmp/gmp-* ${WRKDIR}/gmp
	cd ${WRKDIR}/gmp && ${MAKE} fib_table.h mp_bases.h
CONFIGURE_ARGS+=--with-gmp-build=${WRKDIR}/gmp

.include <bsd.port.mk>
