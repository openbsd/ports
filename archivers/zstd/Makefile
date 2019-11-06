# $OpenBSD: Makefile,v 1.29 2019/11/06 10:19:14 bket Exp $

COMMENT =		zstandard fast real-time compression algorithm

V =			1.4.4
DISTNAME =		zstd-${V}

SHARED_LIBS =		zstd	3.1	# 1.4.4

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

post-extract:
	 sed -i 's,grep,ggrep,g' ${WRKSRC}/contrib/single_file_decoder/combine.sh

.include <bsd.port.mk>
