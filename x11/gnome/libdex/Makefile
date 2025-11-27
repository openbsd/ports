# see patches
ONLY_FOR_ARCHS=		amd64

COMMENT=		future-based programming for GLib-based applications

GNOME_PROJECT=		libdex
GNOME_VERSION=		1.0.0
REVISION=		0

SHARED_LIBS += dex-1                     0.2 # 1.0.0

CATEGORIES=		devel

# LGPLv2.1+
PERMIT_PACKAGE=		Yes

WANTLIB += epoll-shim gio-2.0 glib-2.0 gobject-2.0

MODULES=		devel/meson \
			x11/gnome

MODGNOME_CPPFLAGS=	-I${LOCALBASE}/include/libepoll-shim
MODGNOME_LDFLAGS=	-L${LOCALBASE}/lib -lepoll-shim

MODGNOME_TOOLS=		gobject-introspection vala

# needed to build examples
BUILD_DEPENDS+=		devel/libsoup3

LIB_DEPENDS=		devel/epoll-shim \
			devel/glib2

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
