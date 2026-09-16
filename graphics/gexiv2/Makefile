COMMENT=		GObject-based wrapper around the Exiv2 library

GNOME_VERSION=		0.16.2
GNOME_PROJECT=		gexiv2
REVISION=		0

CATEGORIES=		graphics

SHARED_LIBS += gexiv2-0.16               0.0 # 4.16.2

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
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
BUILD_DEPENDS=		devel/py-gobject3
RUN_DEPENDS=		devel/py-gobject3

.include <bsd.port.mk>
