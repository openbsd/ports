# $OpenBSD: Makefile,v 1.23 2019/04/16 03:52:47 bcallah Exp $

COMMENT =		zstandard fast real-time compression algorithm

V =			1.3.8
DISTNAME =		zstd-${V}

SHARED_LIBS =		zstd	2.0	# 1.3.8

CATEGORIES =		archivers

HOMEPAGE =		https://facebook.github.io/zstd/

MAINTAINER =		Bjorn Ketelaars <bket@openbsd.org>

# BSD 3 clauses + GPLv2
PERMIT_PACKAGE_CDROM =	Yes

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
