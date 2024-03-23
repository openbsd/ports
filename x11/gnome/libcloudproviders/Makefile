COMMENT=		library for integration of cloud storage providers

GNOME_PROJECT=		libcloudproviders
GNOME_VERSION=		0.3.6

SHARED_LIBS += cloudproviders            0.0 # 0.3.6

# LGPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += gio-2.0 glib-2.0 gobject-2.0

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

LIB_DEPENDS=		devel/glib2

.include <bsd.port.mk>
