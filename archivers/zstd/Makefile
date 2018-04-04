# $OpenBSD: Makefile,v 1.16 2018/04/04 16:10:02 bket Exp $

COMMENT =		zstandard fast real-time compression algorithm

GH_ACCOUNT =		facebook
GH_PROJECT =		zstd
GH_TAGNAME =		v1.3.4
SHARED_LIBS =		zstd	1.0	# 1.3.4

CATEGORIES =		archivers

HOMEPAGE =		https://facebook.github.io/zstd/

MAINTAINER =		Bjorn Ketelaars <bjorn.ketelaars@hydroxide.nl>

# BSD 3 clauses + GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c lz4 lzma pthread z

LIB_DEPENDS =		archivers/lz4 \
			archivers/xz

COMPILER =		base-clang ports-clang ports-gcc
COMPILER_LANGS =	c

MAKE_ENV =		CC="${CC}" \
			CFLAGS="${CFLAGS}" \
			CPPFLAGS="-I${WRKSRC}/lib -I${LOCALBASE}/include" \
			CXX="${CXX}" \
			CXXFLAGS="${CXXFLAGS}" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBzstd_VERSION="${LIBzstd_VERSION}"
FAKE_FLAGS =		PREFIX="${PREFIX}"

USE_GMAKE =		Yes

TEST_TARGET =		check

.include <bsd.port.mk>
