COMMENT=		framework for creating UPnP devices and control points

GNOME_PROJECT=		gupnp
GNOME_VERSION=		1.6.6
REVISION=		0

SHARED_LIBS += gupnp-1.6                 0.2 # 0.106.6

WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gssdp-1.6
WANTLIB += soup-3.0 xml2

MODULES=		devel/meson \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		gi-docgen gobject-introspection vala docbook

DEBUG_PACKAGES=		${BUILD_PACKAGES}

# man page generation
BUILD_DEPENDS +=	textproc/libxslt

LIB_DEPENDS=		net/gssdp

.include <bsd.port.mk>
