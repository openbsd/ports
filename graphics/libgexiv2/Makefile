COMMENT=		GObject wrapper around exiv2

GNOME_VERSION=		0.14.0
GNOME_PROJECT=		gexiv2
PKGNAME=		lib${DISTNAME}
REVISION=		0

CATEGORIES=		graphics

SHARED_LIBS += gexiv2                    3.3 # 2.14.0

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

.include <bsd.port.mk>
