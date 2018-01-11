# $OpenBSD: Makefile,v 1.14 2018/01/11 00:13:49 juanfra Exp $

COMMENT =		zstandard fast real-time compression algorithm

GH_ACCOUNT =		facebook
GH_PROJECT =		zstd
GH_TAGNAME =		v1.3.3
REVISION =		0
SHARED_LIBS =		zstd	0.0	#1.3.3

CATEGORIES =		archivers

HOMEPAGE =		https://facebook.github.io/zstd/

MAINTAINER =		Bjorn Ketelaars <bjorn.ketelaars@hydroxide.nl>

# zstd doesn't use known patented code or algorithms, however the project
# includes an additional patent grant in the file PATENTS.
# https://github.com/facebook/zstd/issues/335
# BSD 3 clauses + GPLv2.
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c lz4 lzma pthread  z

LIB_DEPENDS =		archivers/lz4 \
			archivers/xz

COMPILER =		base-clang ports-clang ports-gcc
COMPILER_LANGS =	c

MAKE_ENV =		CC="${CC}" \
			CFLAGS="${CFLAGS}" \
			CPPFLAGS="-I${LOCALBASE}/include" \
			CXX="${CXX}" \
			CXXFLAGS="${CXXFLAGS}" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBzstd_VERSION="${LIBzstd_VERSION}"
FAKE_FLAGS =		PREFIX="${PREFIX}"

USE_GMAKE =		Yes

TEST_TARGET =		check

.include <bsd.port.mk>
