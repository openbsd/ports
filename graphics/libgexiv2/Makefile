# $OpenBSD: Makefile,v 1.43 2020/07/03 21:12:55 sthen Exp $

COMMENT=		GObject wrapper around exiv2

GNOME_VERSION=		0.12.1
GNOME_PROJECT=		gexiv2
PKGNAME=		lib${DISTNAME}
REVISION=		1

CATEGORIES=		graphics

SHARED_LIBS +=  gexiv2               3.2      # 2.0.0

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} exiv2 gio-2.0 glib-2.0 gobject-2.0 m

MODULES=		devel/meson \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

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
