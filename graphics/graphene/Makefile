COMMENT=		thin layer of graphic data types

GNOME_PROJECT=		graphene
GNOME_VERSION=		1.10.8

SHARED_LIBS += graphene-1.0              2.1 # 0.1000.8

CATEGORIES=		graphics

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += glib-2.0 gobject-2.0 m

MODULES=		devel/meson \
			x11/gnome

COMPILER=		base-clang ports-gcc

MODGNOME_TOOLS=		gobject-introspection

LIB_DEPENDS=		devel/glib2

CONFIGURE_ARGS +=	-Dinstalled_tests=false

.include <bsd.port.mk>
