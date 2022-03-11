PORTROACH=		limitw:1,even

COMMENT=		C++ interface for cairo

V=			1.16.1
DISTNAME=		cairomm-${V}
EXTRACT_SUFX=		.tar.xz
PKGNAME=		cairomm16-${V}

SHARED_LIBS += cairomm-1.16              1.0 # 1.4.0

CATEGORIES=		graphics

HOMEPAGE=		https://www.cairographics.org/cairomm/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} cairo sigc-3.0

MASTER_SITES=		http://cairographics.org/releases/

MODULES=		devel/meson

# needed for tests
BUILD_DEPENDS +=	devel/boost

LIB_DEPENDS=		graphics/cairo \
			devel/libsigc++30

# c++17
COMPILER =		base-clang ports-gcc

.include <bsd.port.mk>
