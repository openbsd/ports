USE_NOBTCFI-aarch64 =	Yes# fortran

COMMENT = 	C++ library for scientific computing
DISTNAME = 	armadillo-9.900.4
SHARED_LIBS = 	armadillo 3.1	# 9.900.4
CATEGORIES = 	math
HOMEPAGE = 	https://arma.sourceforge.net/
MAINTAINER =	Marc Espie <espie@openbsd.org>
REVISION =	2

# MPL v2
PERMIT_PACKAGE = Yes

WANTLIB = 	${COMPILER_LIBCXX} arpack blas hdf5 lapack m z gfortran

SITES =		${SITE_SOURCEFORGE:=arma/}
EXTRACT_SUFX= 	.tar.xz

COMPILER = 	base-clang ports-gcc
MODULES += 	devel/cmake

LIB_DEPENDS += 	math/arpack \
		math/hdf5

CONFIGURE_STYLE = cmake
CONFIGURE_ARGS += -DCMAKE_INSTALL_PREFIX=${PREFIX}

MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

NO_TEST = 	Yes

.include <bsd.port.mk>
