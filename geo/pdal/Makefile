COMMENT =	translator library for point cloud formats

V =	2.7.2
DISTNAME =	PDAL-${V}-src
PKGNAME =	pdal-${V}
EXTRACT_SUFX =	.tar.bz2

SHARED_LIBS +=  pdalcpp 2.0 # 16.0 from PDAL_SOLIB defines in cmake/libraries.cmake

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
WANTLIB +=	ssl xml2 z zstd
WANTLIB += ${COMPILER_LIBCXX}

BUILD_DEPENDS +=	devel/gtest
# pgpointcloudtest fails but that's the only one (needs running psql on /tmp/.s.PGSQL.5432)

.include <bsd.port.mk>
