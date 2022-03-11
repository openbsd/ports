COMMENT =	GPS track manager

DISTNAME =	viking-1.10

CATEGORIES =	geo x11

HOMEPAGE =	http://viking.sourceforge.net/
MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += X11 atk-1.0 bz2 c cairo cairo-gobject curl expat gdk-3
WANTLIB += gdk_pixbuf-2.0 geoclue-2 gexiv2 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gps gthread-2.0 gtk-3 harfbuzz intl json-glib-1.0 m
WANTLIB += magic nettle pango-1.0 pangocairo-1.0 pthread sqlite3
WANTLIB += z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=viking/}
EXTRACT_SUFX = .tar.bz2

MODULES =	textproc/intltool x11/gnome

COMPILER =	base-clang ports-gcc

CONFIGURE_STYLE =	gnu
# to ensure X11 libs are found when checking for XSetErrorHandler
CONFIGURE_ENV +=	CFLAGS="-L${X11BASE}/lib"
MODGNOME_TOOLS += desktop-file-utils gtk-update-icon-cache yelp docbook

USE_GMAKE =	Yes

# until mapnik is fixed..
CONFIGURE_ARGS +=	--disable-mapnik \
			--disable-oauth \
			--disable-zip
LIB_DEPENDS =	archivers/bzip2 \
		databases/sqlite3 \
		devel/libmagic \
		devel/json-glib \
		geo/geoclue2 \
		graphics/libgexiv2 \
		misc/gpsd \
		net/curl \
		x11/gtk+3
RUN_DEPENDS =	geo/gpsbabel \
		shells/bash

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/babel.c ${WRKSRC}/src/vikmapniklayer.c

.include <bsd.port.mk>
