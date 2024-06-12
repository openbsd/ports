COMMENT =	decompression routines for ancient formats

GH_ACCOUNT =	temisu
GH_PROJECT =	ancient
GH_TAGNAME =	v2.2.0

SHARED_LIBS +=	ancient 0.0	# 2.2

CATEGORIES =	archivers

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		devel/autoconf-archive

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16
AUTORECONF =		autoreconf -i

CONFIGURE_STYLE =	autoreconf

.include <bsd.port.mk>
