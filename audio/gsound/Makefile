COMMENT=		GObject library for playing system sounds

GNOME_PROJECT=		gsound
GNOME_VERSION=		1.0.3

SHARED_LIBS += gsound                    0.0 # 0.0.2

CATEGORIES=		audio

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += c canberra gio-2.0 glib-2.0 gobject-2.0

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

LIB_DEPENDS=		audio/libcanberra \
			devel/glib2

.include <bsd.port.mk>
