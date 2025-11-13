COMMENT =		GNOME utility to insert unusual characters

GNOME_PROJECT =		gnome-characters
GNOME_VERSION =		49.0

HOMEPAGE =		https://apps.gnome.org/Characters/

# BSD3/GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += gio-2.0 glib-2.0 gobject-2.0

MODULES =		devel/dconf \
			devel/meson \
			x11/gnome

LIB_DEPENDS =		devel/glib2

BUILD_DEPENDS =		devel/appstream \
			x11/gnome/gjs \
			x11/gnome/libadwaita

RUN_DEPENDS =		fonts/noto/emoji \
			x11/gnome/desktop,-gtk4 \
			x11/gnome/gjs \
			x11/gnome/libadwaita

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache

# don't add -L/usr/local/lib to LDFLAGS: libgc.so will conflict (undefined
# symbols) with /usr/local/lib/libgc.so from boehm-gc if it's installed
MODGNOME_LDFLAGS =	No

# Requires unported 'dogtail'
NO_TEST =		Yes

.include <bsd.port.mk>
