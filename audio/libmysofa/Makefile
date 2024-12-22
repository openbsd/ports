COMMENT=	SOFA (Spatially Oriented Format for Acoustics) file reader

VER=		1.3.3
CATEGORIES=	audio
GH_ACCOUNT=	hoene
GH_PROJECT=	libmysofa
GH_TAGNAME=	v${VER}

SHARED_LIBS=	mysofa	0.1

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	m z

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

MODULES=	devel/cmake

CONFIGURE_ARGS+=-DBUILD_TESTS=Off

NO_TEST=	Yes

.include <bsd.port.mk>
