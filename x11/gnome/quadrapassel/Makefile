COMMENT =		fit falling blocks together

GNOME_PROJECT =		quadrapassel
GNOME_VERSION =		49.1

CATEGORIES =		games

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += adwaita-1 c cairo gee-0.8 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gsound gtk-4 intl m pango-1.0 pangocairo-1.0

MODULES =		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS =	vala desktop-file-utils gtk-update-icon-cache yelp

LIB_DEPENDS =		audio/gsound \
			devel/libgee \
			x11/gnome/libadwaita

MODGNOME_LDFLAGS +=    -L${X11BASE}/lib

DEBUG_PACKAGES =	${BUILD_PACKAGES}
.include <bsd.port.mk>
