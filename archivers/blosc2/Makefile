COMMENT =	fast, compressed, persistent binary data store library for C

V =		3.9.0
PKGNAME =	blosc2-${V}

CATEGORIES =	archivers

SHARED_LIBS +=	blosc2                     7.0 # 0.0

GH_ACCOUNT =	Blosc
GH_PROJECT =	c-blosc2
GH_TAGNAME =	v${V}

HOMEPAGE =	https://blosc.org/
MAINTAINER =	Martin Reindl <martin@catai.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=	m lz4 pthread z zfp zstd

COMPILER =	base-clang ports-gcc
COMPILER_LANGS = c

MODULES =	devel/cmake

LIB_DEPENDS =	archivers/lz4 \
		archivers/zstd \
		devel/zfp

CONFIGURE_ARGS =	-DBLOSC_DEPENDENCY_MODE=EXTERNAL

.include <bsd.port.mk>
