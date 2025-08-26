COMMENT =	translator library for point cloud formats

V =	2.9.1
DISTNAME =	PDAL-${V}-src
PKGNAME =	pdal-${V}
EXTRACT_SUFX =	.tar.bz2

SHARED_LIBS +=  pdalcpp 5.0 # 19.0 from PDAL_SOLIB defines in cmake/libraries.cmake

CATEGORIES =	geo devel textproc

HOMEPAGE =	https://pdal.io/
SITES =		https://github.com/PDAL/PDAL/releases/download/${V}/

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	devel/cmake

# uses std=c++0x
COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	${MODPY_LIB_DEPENDS} \
		geo/gdal \
		databases/postgresql \
		net/curl

WANTLIB +=	c crypto curl execinfo gdal geotiff m proj pq pthread
WANTLIB +=	ssl xml2 z
WANTLIB += ${COMPILER_LIBCXX}

# https://github.com/PDAL/PDAL/pull/4801
CONFIGURE_ARGS =	-DWITH_TESTS=OFF
#BUILD_DEPENDS +=	devel/gtest

.include <bsd.port.mk>
