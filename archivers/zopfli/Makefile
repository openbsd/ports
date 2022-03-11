SHARED_LIBS += zopfli		0.0
SHARED_LIBS += zopflipng	0.0

COMMENT =		deflate-compatible compression format

GH_ACCOUNT =		google
GH_PROJECT =		zopfli
GH_TAGNAME =		zopfli-1.0.3
DISTNAME =		${GH_TAGNAME}

CATEGORIES =		archivers

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

MODULES =		devel/cmake
COMPILER =		base-clang ports-gcc base-gcc
CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=yes
NO_TEST =		Yes

.include <bsd.port.mk>
