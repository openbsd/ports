ONLY_FOR_ARCHS=		amd64

COMMENT=		future-based programming for GLib-based applications

GNOME_PROJECT=		libdex
GNOME_VERSION=		1.2.0

SHARED_LIBS += dex-1                     0.3 # 1.0.0

CATEGORIES=		devel

# LGPLv2.1+
PERMIT_PACKAGE=		Yes

WANTLIB += gio-2.0 glib-2.0 gobject-2.0

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

# needed to build examples
BUILD_DEPENDS+=		devel/libsoup3

LIB_DEPENDS=		devel/glib2

RUN_DEPENDS=		devel/py-gobject3

CONFIGURE_ARGS=		-Deventfd=disabled

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
