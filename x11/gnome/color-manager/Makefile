COMMENT=		GNOME Color Profile Tools

GNOME_PROJECT=		gnome-color-manager
GNOME_VERSION=		3.36.2
REVISION=		0

CATEGORIES=		graphics

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c cairo colord gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 intl lcms2 m pango-1.0

COMPILER=		base-clang ports-gcc base-gcc
COMPILER_LANGS=		c

MODULES=		devel/meson \
			x11/gnome

LIB_DEPENDS=		graphics/colord \
			x11/gtk+3

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache yelp

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
