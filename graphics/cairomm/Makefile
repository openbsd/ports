# $OpenBSD: Makefile,v 1.37 2019/07/12 20:46:57 sthen Exp $

PORTROACH=		limitw:1,even

# no libGL (toolchain issue)
NOT_FOR_ARCHS=		m88k

COMMENT=		C++ interface for cairo

DISTNAME=		cairomm-1.12.2
REVISION=		1

SHARED_LIBS +=  cairomm-1.0          5.1      # 5.0

CATEGORIES=		graphics

HOMEPAGE=		http://cairographics.org/cairomm/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xext Xrender cairo expat fontconfig freetype m
WANTLIB += pixman-1 png pthread sigc-2.0 xcb xcb-render
WANTLIB += xcb-shm z
WANTLIB += ${COMPILER_LIBCXX}

MASTER_SITES=		http://cairographics.org/releases/

LIB_DEPENDS=		graphics/cairo \
			devel/libsigc++-2

# c++11
COMPILER =		base-clang ports-gcc

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		ac_cv_path_DOT= \
			ac_cv_path_DOXYGEN=

.include <bsd.port.mk>
