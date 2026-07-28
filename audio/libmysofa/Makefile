COMMENT=	SOFA (Spatially Oriented Format for Acoustics) file reader

VER=		1.3.5
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
BUILD_DEPENDS=	devel/cunit

.include <bsd.port.mk>
