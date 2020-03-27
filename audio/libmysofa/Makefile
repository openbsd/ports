# $OpenBSD: Makefile,v 1.1.1.1 2020/03/27 21:04:04 sthen Exp $

COMMENT=	SOFA (Spatially Oriented Format for Acoustics) file reader

VER=		1.0
CATEGORIES=	audio
GH_ACCOUNT=	hoene
GH_PROJECT=	libmysofa
GH_TAGNAME=	v${VER}

SHARED_LIBS=	mysofa	0.0

HOMEPAGE=	https://github.com/hoene/libmysofa

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	m z

COMPILER=	base-clang ports-clang ports-gcc

MODULES=	devel/cmake

CONFIGURE_ARGS+=-DBUILD_TESTS=Off

NO_TEST=	Yes

.include <bsd.port.mk>
