COMMENT =	library for spatial indexing and querying
V =		1.9.3
DISTNAME =	spatialindex-src-${V}
PKGNAME =	${DISTNAME:S/-src//}
CATEGORIES =	geo
SHARED_LIBS =	spatialindex 3.0 \
		spatialindex_c 1.0

# MIT
PERMIT_PACKAGE =	Yes

HOMEPAGE =	https://libspatialindex.org/
MASTER_SITES =	https://github.com/libspatialindex/libspatialindex/releases/download/${V}/

MODULES =	devel/cmake

WANTLIB =	m pthread ${COMPILER_LIBCXX}

COMPILER =	base-clang ports-gcc base-gcc

# only one dumb test, builds bundled gtest ?
#CONFIGURE_ARGS += -DSIDX_BUILD_TESTS=On

.include <bsd.port.mk>
