COMMENT=	Universal Plug and Play SDK

V =		1.14.25
DISTNAME=	libupnp-${V}

CATEGORIES=	net devel

SHARED_LIBS +=  ixml                 1.0      # 10.2
SHARED_LIBS +=  upnp                 3.0      # 14.2

HOMEPAGE=	https://pupnp.github.io/pupnp/

SITES=		https://github.com/pupnp/pupnp/releases/download/release-${V}/
EXTRACT_SUFX=	.tar.bz2

# BSD
PERMIT_PACKAGE=	Yes

# -std=c++14
COMPILER=	base-clang ports-gcc

WANTLIB += c pthread

MODULES =	devel/cmake

DEBUG_PACKAGES=	${BUILD_PACKAGES}

.include <bsd.port.mk>
