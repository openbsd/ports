COMMENT=		C++ bindings for libxml2

GNOME_VERSION=		5.0.1
GNOME_PROJECT=		libxml++
PKGNAME=		libxml++50-${GNOME_VERSION}

SHARED_LIBS += xml++-5.0                 0.0 # 1.0.0

CATEGORIES=		textproc

HOMEPAGE=		https://libxmlplusplus.github.io/libxmlplusplus/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} xml2

MODULES=		devel/meson \
			x11/gnome

DEBUG_PACKAGES=		${BUILD_PACKAGES}

# c++11
COMPILER=		base-clang ports-gcc

LIB_DEPENDS=		textproc/libxml

.include <bsd.port.mk>
