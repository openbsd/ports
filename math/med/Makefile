USE_NOBTCFI-aarch64 =	Yes# fortran

COMMENT =		library for reading and writing MED files

V =			5.0.0
PKGNAME =		med-${V}
REVISION =		0

# Official sources site seems down:
# https://files.salome-platform.org/Salome/medfile/med-${V}.tar.bz2
# Use mirror in the meantime:
# https://github.com/chennes/med
DIST_TUPLE +=		github chennes med v${V} .

SHARED_LIBS +=		medC		0.0 # 0.0
SHARED_LIBS +=		medimport	0.0 # 0.0

CATEGORIES =		math
HOMEPAGE =		https://www.salome-platform.org/
MAINTAINER =		Johannes Thyssen Tishman <ports@thyssentishman.com>

# LGPLv3
PERMIT_PACKAGE =	Yes

WANTLIB +=		${COMPILER_LIBCXX} c hdf5 m z

COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake

LIB_DEPENDS =		math/hdf5

CONFIGURE_ARGS =	-DMEDFILE_BUILD_DOC=OFF \
			-DMEDFILE_BUILD_FORTRAN=OFF \
			-DMEDFILE_BUILD_PYTHON=OFF \
			-DMEDFILE_BUILD_SHARED_LIBS=ON \
			-DMEDFILE_BUILD_STATIC_LIBS=OFF \
			-DMEDFILE_BUILD_TESTS=ON \
			-DMEDFILE_INSTALL_DOC=OFF \
			-DMEDFILE_USE_MPI=OFF \
			-DMEDFILE_USE_UNICODE=ON

SUBST_VARS +=		V

# don't install old header and test binaries
post-install:
	rm -r ${PREFIX}/include/2.3.6
	rm -r ${PREFIX}/bin/testc

.include <bsd.port.mk>
