COMMENT =		fit falling blocks together

GNOME_PROJECT =		quadrapassel
GNOME_VERSION =		49.2.1

CATEGORIES =		games

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += adwaita-1 c cairo gio-2.0 glib-2.0 gobject-2.0 gsound
WANTLIB += gtk-4 intl m pango-1.0 pangocairo-1.0

MODULES =		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS =	vala desktop-file-utils gtk-update-icon-cache

BUILD_DEPENDS =		x11/blueprint-compiler

# XXX libgee support was dropped but configure still looks for it
BUILD_DEPENDS +=	devel/libgee

LIB_DEPENDS =		audio/gsound \
			x11/gnome/libadwaita

MODGNOME_LDFLAGS =	-L${X11BASE}/lib

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
