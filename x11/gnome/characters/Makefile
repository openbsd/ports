COMMENT =		GNOME utility to insert unusual characters

GNOME_PROJECT =		gnome-characters
GNOME_VERSION =		48.0

HOMEPAGE =		https://apps.gnome.org/Characters/

# BSD3/GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += gio-2.0 glib-2.0 gobject-2.0

MODULES =		devel/dconf \
			devel/meson \
			x11/gnome

LIB_DEPENDS =		devel/glib2

BUILD_DEPENDS =		x11/gnome/gjs \
			x11/gnome/libadwaita

RUN_DEPENDS =		fonts/noto/emoji \
			x11/gnome/desktop,-gtk4 \
			x11/gnome/gjs \
			x11/gnome/libadwaita

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache

# prevent passing -L/usr/local/lib to LDFLAGS (default behavior of the gnome
# MODULE); otherwise if boehm-gc is installed we will run into undefined symbols
# due to the bundled libgc.so versus /usr/local/lib/libgc.so
_MODGNOME_ldflags =	# empty

# Requires unported 'dogtail'
NO_TEST =		Yes

.include <bsd.port.mk>
