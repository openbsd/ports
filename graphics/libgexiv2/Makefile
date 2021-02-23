# $OpenBSD: Makefile,v 1.46 2021/02/23 19:39:25 sthen Exp $

COMMENT=		GObject wrapper around exiv2

GNOME_VERSION=		0.12.2
GNOME_PROJECT=		gexiv2
PKGNAME=		lib${DISTNAME}

CATEGORIES=		graphics

SHARED_LIBS +=  gexiv2               3.3      # 2.0.0

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} exiv2 gio-2.0 glib-2.0 gobject-2.0 m

MODULES=		devel/meson \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

# C++11
COMPILER =		base-clang ports-gcc
CXXFLAGS +=		-std=c++11

LIB_DEPENDS=		devel/glib2 \
			graphics/exiv2

# import gi
BUILD_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}
RUN_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}

CONFIGURE_ARGS=		-Dpython2_girdir=no

.include <bsd.port.mk>
