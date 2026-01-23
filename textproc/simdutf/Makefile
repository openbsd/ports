COMMENT =	unicode validator and transcoder with SIMD

VERSION =	8.0.0
DIST_TUPLE +=	github simdutf simdutf v${VERSION} .

SHARED_LIBS =	simdutf 0.3

CATEGORIES =	textproc devel

HOMEPAGE =	https://simdutf.github.io/simdutf/

MAINTAINER =	Volker Schlecht <openbsd-ports@schlecht.dev>

# Apache 2.0, MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c iconv m

LIB_DEPENDS =		converters/libiconv

COMPILER =		base-clang ports-gcc
MODULES =		lang/python \
			devel/cmake

CONFIGURE_STYLE =	cmake
CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=ON

# bundled tools don't build on gcc archs
.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mclang}
PKG_ARGS +=		-Dtools=1
CONFIGURE_ARGS +=	-DSIMDUTF_TOOLS=ON
.else
PKG_ARGS +=		-Dtools=0
CONFIGURE_ARGS +=	-DSIMDUTF_TOOLS=OFF
.endif

.include <bsd.port.mk>
