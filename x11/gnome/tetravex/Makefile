COMMENT =		simple puzzle game games

GNOME_PROJECT =		gnome-tetravex
GNOME_VERSION =		3.38.2

CATEGORIES =		games

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache vala yelp

LIB_DEPENDS =		x11/gtk+3

WANTLIB += c cairo gdk-3 gio-2.0 glib-2.0 gobject-2.0 gtk-3 intl
WANTLIB += m

.include <bsd.port.mk>
