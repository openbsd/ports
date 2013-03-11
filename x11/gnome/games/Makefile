# $OpenBSD: Makefile,v 1.68 2013/03/11 11:46:10 espie Exp $

COMMENT=		collection of games for the GNOME desktop

GNOME_PROJECT=		gnome-games
GNOME_VERSION=		3.6.1
REVISION=		0

CATEGORIES=		games

HOMEPAGE=		http://live.gnome.org/GnomeGames/

# GPLv2/GDFLv1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL GLU X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c
WANTLIB += cairo cairo-gobject canberra canberra-gtk3 clutter-1.0
WANTLIB += clutter-gtk-1.0 cogl cogl-pango croco-0.6 drm expat
WANTLIB += ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-3
WANTLIB += json-glib-1.0 ltdl m ogg pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs rsvg-2 sqlite3
WANTLIB += stdc++ vorbis vorbisfile xcb xcb-render xcb-shm xml2
WANTLIB += ICE SM atk-bridge-2.0 atspi dbus-1 harfbuzz icudata
WANTLIB += icule icuuc z

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		devel/py-gobject3
LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			graphics/clutter/clutter-gtk \
			x11/gnome/librsvg
RUN_DEPENDS=		games/gnuchess \
			devel/py-gobject3

MODGNOME_TOOLS= 	yelp

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

MODPY_ADJ_FILES=	gnome-sudoku/src/gnome-sudoku

CONFIGURE_ARGS= 	--with-scores-user=root \
			--with-scores-group="games"

TEST_IS_INTERACTIVE= x11

FAKE_FLAGS=		scoredir=${PREFIX}/share/gnome-games/scores/

.include <bsd.port.mk>
