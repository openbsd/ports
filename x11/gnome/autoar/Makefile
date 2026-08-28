COMMENT=		automatic archives creating and extracting library

GNOME_PROJECT=		gnome-autoar
GNOME_VERSION=		0.5.0

SHARED_LIBS += gnome-autoar-0            0.0 # 0.2.1

CATEGORIES=		archivers

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += archive gio-2.0 glib-2.0 gobject-2.0

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS= 	gobject-introspection

LIB_DEPENDS=		archivers/libarchive \
			devel/glib2

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
