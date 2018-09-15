# $OpenBSD: Makefile,v 1.19 2018/09/15 17:38:16 visa Exp $

COMMENT =		zstandard fast real-time compression algorithm

GH_ACCOUNT =		facebook
GH_PROJECT =		zstd
GH_TAGNAME =		v1.3.5
REVISION =		0
SHARED_LIBS =		zstd	1.1	# 1.3.5

CATEGORIES =		archivers

HOMEPAGE =		https://facebook.github.io/zstd/

MAINTAINER =		Bjorn Ketelaars <bket@openbsd.org>

# BSD 3 clauses + GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c lz4 lzma pthread z

LIB_DEPENDS =		archivers/lz4 \
			archivers/xz

COMPILER =		base-clang ports-gcc

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
