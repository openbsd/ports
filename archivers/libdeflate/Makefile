COMMENT =	optimized library for DEFLATE/zlib/gzip (de)compression

GH_ACCOUNT =	ebiggers
GH_PROJECT =	libdeflate
GH_TAGNAME =	v1.18

SHARED_LIBS =	deflate	0.0

CATEGORIES =	archivers

MAINTAINER =	Bjorn Ketelaars <bket@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		c

MODULES=		devel/cmake

CONFIGURE_ARGS =	-DLIBDEFLATE_BUILD_TESTS=ON

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
