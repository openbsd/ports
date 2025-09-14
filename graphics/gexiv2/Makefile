COMMENT=		GObject-based wrapper around the Exiv2 library

GNOME_VERSION=		0.16.0
GNOME_PROJECT=		gexiv2

CATEGORIES=		graphics

SHARED_LIBS += gexiv2-0.16               0.0 # 4.16.0

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

# need to add this for gcc
# revisit when gcc drops it
EXTRA_ports-gcc=	-lstdc++fs
CXXFLAGS+=		${EXTRA_${CHOSEN_COMPILER}}

LIB_DEPENDS=		devel/glib2 \
			graphics/exiv2

# import gi
BUILD_DEPENDS=		devel/py-gobject3
RUN_DEPENDS=		devel/py-gobject3

post-install:
# XXX prevent conflict with graphics/libgexiv2;
# lib/python${MODPY_VERSION}/site-packages/gi/overrides/GExiv2.py
# lib/python${MODPY_VERSION}/site-packages/gi/overrides/${MODPY_PYCACHE}GExiv2.${MODPY_PYC_MAGIC_TAG}pyc
# see https://gitlab.gnome.org/GNOME/gexiv2/-/issues/88
	rm -r ${PREFIX}/lib/python${MODPY_VERSION}/

.include <bsd.port.mk>
