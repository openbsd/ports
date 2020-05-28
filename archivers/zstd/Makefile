# $OpenBSD: Makefile,v 1.32 2020/05/28 19:31:56 bket Exp $

COMMENT =		zstandard fast real-time compression algorithm

V =			1.4.5
DISTNAME =		zstd-${V}

SHARED_LIBS =		zstd	3.2	# 1.4.5

CATEGORIES =		archivers

HOMEPAGE =		https://facebook.github.io/zstd/

MAINTAINER =		Bjorn Ketelaars <bket@openbsd.org>

# BSD 3 clauses + GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		c lz4 lzma pthread z

MASTER_SITES =		https://github.com/facebook/zstd/releases/download/v${V}/

LIB_DEPENDS =		archivers/lz4 \
			archivers/xz
BUILD_DEPENDS =		sysutils/ggrep

COMPILER =		base-clang ports-gcc

MAKE_ENV =		CC="${CC}" \
			CFLAGS="${CFLAGS}" \
			CPPFLAGS="-I${WRKSRC}/lib -I${WRKSRC}/lib/common -I${LOCALBASE}/include" \
			CXX="${CXX}" \
			CXXFLAGS="${CXXFLAGS}" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"
MAKE_FLAGS =		SHARED_EXT_VER="so.$(LIBzstd_VERSION)" \
			SONAME_FLAGS= \
			V=1
FAKE_FLAGS =		PREFIX="${PREFIX}"

.if ${MACHINE_ARCH:Mhppa}
WANTLIB +=		atomic
LDFLAGS +=		-latomic
.endif

USE_GMAKE =		Yes

DEBUG_PACKAGES =	${BUILD_PACKAGES}

TEST_TARGET =		check

pre-build:
	ln -fs ${LOCALBASE}/bin/ggrep ${WRKDIR}/bin/grep

.include <bsd.port.mk>
