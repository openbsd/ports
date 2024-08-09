COMMENT=	asynchronous resolver library

V=		1.33.0
DISTNAME=	c-ares-${V}
PKGNAME=	libcares-${V}
CATEGORIES=	net devel
SITES=		https://github.com/c-ares/c-ares/releases/download/v${V}/

SHARED_LIBS +=  cares                4.2      # 2.18.0

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
