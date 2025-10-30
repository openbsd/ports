COMMENT=		typesafe callback system for standard C++

V=			3.8.0
DISTNAME=		libsigc++-${V}
EXTRACT_SUFX=		.tar.xz
PKGNAME=		libsigc++30-${V}

CATEGORIES=		devel

SHARED_LIBS += sigc-3.0                  0.3 # 0.0.0

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX}

SITES=			https://github.com/libsigcplusplus/libsigcplusplus/releases/download/${V}/

MODULES=		devel/meson

# c++11
COMPILER =		base-clang ports-gcc

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
