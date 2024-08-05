COMMENT =	optimized library for DEFLATE/zlib/gzip (de)compression

DIST_TUPLE =	github ebiggers libdeflate v1.21 .

SHARED_LIBS =	deflate	0.1

CATEGORIES =	archivers

MAINTAINER =	Bjorn Ketelaars <bket@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

COMPILER =	base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB =		c

MODULES=		devel/cmake

CONFIGURE_ARGS =	-DLIBDEFLATE_BUILD_TESTS=ON

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
