COMMENT=		GObject to SQLite object mapper

GNOME_PROJECT=		gom
GNOME_VERSION=		0.5.2

SHARED_LIBS += gom-1.0                   0.0 # 0.1.0

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += gio-2.0 glib-2.0 gobject-2.0 sqlite3

MODULES=		devel/meson \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection

MODPY_RUNDEP=		No

BUILD_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR} \
			graphics/gdk-pixbuf2

LIB_DEPENDS=		databases/sqlite3 \
			devel/glib2

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
