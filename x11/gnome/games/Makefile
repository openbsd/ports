# $OpenBSD: Makefile,v 1.63 2012/08/18 21:58:13 ajacoutot Exp $

COMMENT=		collection of games for the GNOME desktop

GNOME_PROJECT=		gnome-games
GNOME_VERSION=		3.4.2
REVISION=		1

SHARED_LIBS +=  games-support-gi          1.0 # 0.0

CATEGORIES=		games

HOMEPAGE=		http://live.gnome.org/GnomeGames/

# GPLv2/GDFLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL GLU X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c
WANTLIB += cairo cairo-gobject canberra canberra-gtk3 clutter-1.0
WANTLIB += clutter-gtk-1.0 cogl cogl-pango croco-0.6 drm expat
WANTLIB += ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-3
WANTLIB += json-glib-1.0 ltdl m ogg pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs rsvg-2 sqlite3
WANTLIB += stdc++ vorbis vorbisfile xcb xcb-render xcb-shm xml2
WANTLIB += z

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		devel/py-gobject3
LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			graphics/clutter/clutter-gtk \
			x11/gnome/librsvg
RUN_DEPENDS=		games/gnuchess \
			multimedia/gstreamer-0.10/plugins-good \
			devel/py-gobject3
REGRESS_DEPENDS=	devel/check

MODGNOME_TOOLS= 	goi yelp

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

MODPY_ADJ_FILES=	gnome-sudoku/src/gnome-sudoku

CONFIGURE_ARGS= 	--with-scores-user=root \
			--with-scores-group="games"

REGRESS_IS_INTERACTIVE= x11

FAKE_FLAGS=		scoredir=${PREFIX}/share/gnome-games/scores/

.include <bsd.port.mk>
