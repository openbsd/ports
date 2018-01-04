# $OpenBSD: Makefile,v 1.13 2018/01/04 14:47:20 sthen Exp $

COMMENT =		zstandard fast real-time compression algorithm

GH_ACCOUNT =		facebook
GH_PROJECT =		zstd
GH_TAGNAME =		v1.3.3
SHARED_LIBS =		zstd	0.0	#1.3.3

CATEGORIES =		archivers

HOMEPAGE =		https://facebook.github.io/zstd/

# zstd doesn't use known patented code or algorithms, however the project
# includes an additional patent grant in the file PATENTS.
# https://github.com/facebook/zstd/issues/335
# BSD 3 clauses + GPLv2.
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c pthread z

COMPILER =		base-clang ports-clang ports-gcc
COMPILER_LANGS =	c

MAKE_ENV =		CC="${CC}" CXX="${CXX}" \
			CFLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS}" \
			LIBzstd_VERSION="${LIBzstd_VERSION}"
FAKE_FLAGS =		PREFIX="${PREFIX}"

USE_GMAKE =		Yes

TEST_TARGET =		check

.include <bsd.port.mk>
