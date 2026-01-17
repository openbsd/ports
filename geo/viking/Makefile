COMMENT =	GPS track manager

DISTNAME =	viking-1.11

CATEGORIES =	geo x11

HOMEPAGE =	https://viking.sourceforge.net/
MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += X11 atk-1.0 bz2 c cairo cairo-gobject curl expat gdk-3
WANTLIB += gdk_pixbuf-2.0 geoclue-2 gexiv2 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gps gthread-2.0 gtk-3 harfbuzz intl json-glib-1.0 m
WANTLIB += magic nettle pango-1.0 pangocairo-1.0 pthread sqlite3
WANTLIB += z zip lzma icuuc nova mapnik ${COMPILER_LIBCXX}

SITES =		${SITE_SOURCEFORGE:=viking/}
EXTRACT_SUFX = .tar.bz2

MODULES =	textproc/intltool x11/gnome

COMPILER =	base-clang ports-gcc
COMPILER_LANGS = c

CONFIGURE_STYLE =	gnu
# to ensure X11 libs are found when checking for XSetErrorHandler, and mapnik is found
CONFIGURE_ENV +=	CFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib -I${LOCALBASE}/include/mapnik" \
			CXXFLAGS="-L${X11BASE}/lib -I${LOCALBASE}/include/mapnik"
MODGNOME_TOOLS += desktop-file-utils gtk-update-icon-cache yelp docbook

USE_GMAKE =	Yes

LIB_DEPENDS =	archivers/bzip2 \
		archivers/libzip \
		astro/libnova \
		databases/sqlite3 \
		devel/libmagic \
		devel/json-glib \
		geo/geoclue2 \
		graphics/libgexiv2 \
		graphics/mapnik \
		misc/gpsd \
		net/curl \
		x11/gtk+3

# expect for 'unbuffer'
RUN_DEPENDS =	geo/gpsbabel \
		lang/expect \
		shells/bash

# uses xxd during configure
BUILD_DEPENDS =	editors/vim

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/babel.c ${WRKSRC}/src/vikmapniklayer.c

.include <bsd.port.mk>
