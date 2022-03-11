COMMENT=		helpers for building A/V applications using GUPnP

GNOME_PROJECT=		gupnp-av
GNOME_VERSION=		0.14.0

SHARED_LIBS +=  gupnp-av-1.0         0.1      # 2.0

MODULES=		devel/meson \
			x11/gnome

# C11
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB += glib-2.0 gobject-2.0 xml2

DEBUG_PACKAGES =	${BUILD_PACKAGES}

LIB_DEPENDS =		devel/glib2 \
			textproc/libxml

MODGNOME_TOOLS += gobject-introspection vala

.include <bsd.port.mk>
