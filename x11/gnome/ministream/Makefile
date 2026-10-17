COMMENT=		very small alternative to appstream

GNOME_PROJECT=		ministream
GNOME_VERSION=		0.99.1

SHARED_LIBS += ministream                0.0 # 0.99.1

CATEGORIES=		devel

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += glib-2.0 gobject-2.0

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection

BUILD_DEPENDS=		devel/appstream

LIB_DEPENDS=		devel/glib2

.include <bsd.port.mk>
