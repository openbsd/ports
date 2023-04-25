COMMENT =		reversi board game

GNOME_PROJECT =		iagno
GNOME_VERSION =		3.38.1

CATEGORIES =		games

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		devel/dconf \
			devel/meson \
			x11/gnome

WANTLIB += c cairo gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gsound gtk-3 intl m rsvg-2

MODGNOME_LDFLAGS =	-L${X11BASE}/lib
MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache vala yelp

LIB_DEPENDS =		x11/gtk+3 \
			audio/gsound

.include <bsd.port.mk>
