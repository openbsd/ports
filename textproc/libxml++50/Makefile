COMMENT=		C++ bindings for libxml2

V=			5.6.0
DISTNAME=		libxml++-${V}
PKGNAME=		libxml++50-${V}
EXTRACT_SUFX=		.tar.xz

SHARED_LIBS += xml++-5.0                 0.1 # 1.0.0

CATEGORIES=		textproc

HOMEPAGE=		https://libxmlplusplus.github.io/libxmlplusplus/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} xml2

SITES=			https://github.com/libxmlplusplus/libxmlplusplus/releases/download/${V}/

MODULES=		devel/meson

# c++11
COMPILER=		base-clang ports-gcc

LIB_DEPENDS=		textproc/libxml

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
