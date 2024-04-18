COMMENT =	lossless LiDAR compression

V =	3.4.4
DIST_TUPLE =	github LASzip LASzip ${V} .
PKGNAME =	laszip-${V}

SHARED_LIBS =	laszip 1.0 \
		laszip_api 0.0 # 8.0.5

CATEGORIES =	converters textproc archivers

HOMEPAGE =	https://laszip.org/

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB +=	m ${COMPILER_LIBCXX}

#c++11
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

NO_TEST =	Yes

.include <bsd.port.mk>
