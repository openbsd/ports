COMMENT =	optimized library for DEFLATE/zlib/gzip (de)compression

GH_ACCOUNT =	ebiggers
GH_PROJECT =	libdeflate
GH_TAGNAME =	v1.10

SHARED_LIBS =	deflate	0.0

CATEGORIES =	archivers

MAINTAINER =	Bjorn Ketelaars <bket@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		c

MAKE_FLAGS =		CC="${CC}" \
			PREFIX="${PREFIX}" \
			SOVERSION=${LIBdeflate_VERSION} \
			V=1

USE_GMAKE =		Yes

DEBUG_PACKAGES =	${BUILD_PACKAGES}

TEST_TARGET =		check

.include <bsd.port.mk>
