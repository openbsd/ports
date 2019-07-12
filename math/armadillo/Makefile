# $OpenBSD: Makefile,v 1.3 2019/07/12 21:02:23 sthen Exp $

COMMENT = 	C++ library for scientific computing
DISTNAME = 	armadillo-9.200.4
SHARED_LIBS = 	armadillo 1.0	# 9.100
CATEGORIES = 	math
HOMEPAGE = 	http://arma.sourceforge.net/
MAINTAINER =	Marc Espie <espie@openbsd.org>

# MPL v2
PERMIT_PACKAGE = Yes

WANTLIB = 	${COMPILER_LIBCXX} arpack blas hdf5 lapack m z gfortran

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=arma/}
EXTRACT_SUFX= 	.tar.xz

COMPILER = 	base-clang ports-gcc
MODULES += 	devel/cmake

LIB_DEPENDS += 	math/arpack \
		math/hdf5

CONFIGURE_STYLE = cmake
CONFIGURE_ARGS += -DCMAKE_INSTALL_PREFIX=${PREFIX}

NO_TEST = 	Yes

.include <bsd.port.mk>
