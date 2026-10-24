COMMENT =		fit falling blocks together

GNOME_PROJECT =		quadrapassel
GNOME_VERSION =		51.1

CATEGORIES =		games

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += adwaita-1 c gio-2.0 glib-2.0 gobject-2.0 gtk-4 intl
WANTLIB += m openal sndfile

MODULES =		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS =	vala desktop-file-utils gtk-update-icon-cache

BUILD_DEPENDS =		x11/blueprint-compiler

LIB_DEPENDS =		audio/libsndfile \
			audio/openal \
			x11/gnome/libadwaita

MODGNOME_LDFLAGS =	-L${X11BASE}/lib

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
