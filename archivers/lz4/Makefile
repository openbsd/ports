COMMENT=	fast BSD-licensed data compression

GH_ACCOUNT=	lz4
GH_PROJECT=	lz4
GH_TAGNAME=	v1.9.3
REVISION=	0

SHARED_LIBS=	lz4                       3.1

CATEGORIES=	archivers

HOMEPAGE=	https://lz4.github.io/lz4/

MAINTAINER=	Bjorn Ketelaars <bket@openbsd.org>

# library: BSD, tools: GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	c

MAKE_FLAGS=	CC="${CC}" \
		CFLAGS="${CFLAGS} -DLZ4_FORCE_MEMORY_ACCESS=1" \
		MANDIR="${PREFIX}/man" \
		SHARED_EXT_VER="so.${LIBlz4_VERSION}" \
		SONAME_FLAGS= \
		V=1
FAKE_FLAGS=	PKGCONFIGDIR="${PREFIX}/lib/pkgconfig" \
		PREFIX="${PREFIX}"
TEST_ENV=	MAKE_PROGRAM=${MAKE_PROGRAM}

USE_GMAKE=	Yes

DEBUG_PACKAGES=	${BUILD_PACKAGES}

ALL_TARGET=	default
TEST_TARGET=	check

.include <bsd.port.mk>
