PORTROACH=		limit:^1.14

# no libGL (toolchain issue)
NOT_FOR_ARCHS=		m88k

COMMENT=		C++ interface for cairo

DISTNAME=		cairomm-1.14.3
EXTRACT_SUFX=		.tar.xz

SHARED_LIBS += cairomm-1.0               5.2 # 1.4.0

CATEGORIES=		graphics

HOMEPAGE=		http://cairographics.org/cairomm/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} cairo sigc-2.0

MASTER_SITES=		http://cairographics.org/releases/

MODULES=		devel/meson

LIB_DEPENDS=		graphics/cairo \
			devel/libsigc++-2

# c++11
COMPILER =		base-clang ports-gcc

.include <bsd.port.mk>
