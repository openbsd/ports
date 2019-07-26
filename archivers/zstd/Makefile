# $OpenBSD: Makefile,v 1.27 2019/07/26 11:14:42 bket Exp $

COMMENT =		zstandard fast real-time compression algorithm

V =			1.4.2
DISTNAME =		zstd-${V}

SHARED_LIBS =		zstd	3.0	# 1.4.0

CATEGORIES =		archivers

HOMEPAGE =		https://facebook.github.io/zstd/

MAINTAINER =		Bjorn Ketelaars <bket@openbsd.org>

# BSD 3 clauses + GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		c lz4 lzma pthread z

MASTER_SITES =		https://github.com/facebook/zstd/releases/download/v${V}/

LIB_DEPENDS =		archivers/lz4 \
			archivers/xz

COMPILER =		base-clang ports-gcc

MAKE_ENV =		CC="${CC}" \
			CFLAGS="${CFLAGS}" \
			CPPFLAGS="-I${WRKSRC}/lib -I${WRKSRC}/lib/dictBuilder -I${LOCALBASE}/include" \
			CXX="${CXX}" \
			CXXFLAGS="${CXXFLAGS}" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" \
			LIBzstd_VERSION="${LIBzstd_VERSION}"

.if ${MACHINE_ARCH:Mhppa}
WANTLIB +=		atomic
LDFLAGS +=		-latomic
.endif

FAKE_FLAGS =		PREFIX="${PREFIX}"

USE_GMAKE =		Yes

TEST_TARGET =		check

.include <bsd.port.mk>
