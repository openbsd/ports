COMMENT=	asynchronous resolver library

V=		1.29.0
DISTNAME=	c-ares-${V}
PKGNAME=	libcares-${V}
REVISION=	0
CATEGORIES=	net devel
SITES=		https://github.com/c-ares/c-ares/releases/download/cares-${V:S/./_/g}/

SHARED_LIBS +=  cares                3.7      # 2.14.0

HOMEPAGE=	https://c-ares.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB+=	pthread

MODULES=	devel/cmake

# C++
COMPILER=	base-clang ports-gcc

BUILD_DEPENDS+=	devel/gtest

CONFIGURE_ARGS+=-DCARES_BUILD_TESTS=ON \
		-DCARES_BUILD_TOOLS=OFF \
		-DCARES_STATIC=ON \
		-DCARES_SYMBOL_HIDING=ON

.include <bsd.port.mk>
