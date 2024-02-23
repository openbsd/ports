COMMENT=	asynchronous resolver library

V=		1.27.0
DISTNAME=	c-ares-${V}
PKGNAME=	libcares-${V}
CATEGORIES=	net devel
SITES=		${HOMEPAGE}download/

SHARED_LIBS +=  cares                3.5      # 8.1.6

HOMEPAGE=	https://c-ares.haxx.se/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB+=	pthread

MODULES=	devel/cmake

CONFIGURE_ARGS+=-DCARES_BUILD_TOOLS=OFF \
		-DCARES_STATIC=ON \
		-DCARES_SYMBOL_HIDING=ON

.include <bsd.port.mk>
