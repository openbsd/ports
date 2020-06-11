# $OpenBSD: Makefile,v 1.43 2020/06/11 07:08:26 ajacoutot Exp $

COMMENT =	GPS track manager

DISTNAME =	viking-1.8
REVISION =	0

CATEGORIES =	geo x11

HOMEPAGE =	http://viking.sourceforge.net/
MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 bz2 c cairo crypto curl expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 geoclue-2 gexiv2 gio-2.0
WANTLIB += glib-2.0 gobject-2.0 gps gthread-2.0 gtk-x11-2.0 intl m
WANTLIB += magic nettle nghttp2 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pthread sqlite3 ssl z harfbuzz

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=viking/}
EXTRACT_SUFX = .tar.bz2

MODULES =	textproc/intltool x11/gnome

COMPILER =	base-clang ports-gcc

CONFIGURE_STYLE =	gnu
# to ensure X11 libs are found when checking for -lmapnik
# CONFIGURE_ENV +=	CXXFLAGS="-L${X11BASE}/lib"
MODGNOME_TOOLS += desktop-file-utils gtk-update-icon-cache

USE_GMAKE =	Yes

# until mapnik is fixed..
CONFIGURE_ARGS +=	--disable-mapnik \
			--disable-oauth \
			--disable-zip \
			--disable-scrollkeeper
LIB_DEPENDS =	archivers/bzip2 \
		databases/sqlite3 \
		devel/libmagic \
		geo/geoclue2 \
		graphics/libgexiv2 \
		misc/gpsd \
		net/curl \
		x11/gtk+2
RUN_DEPENDS =	geo/gpsbabel

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/vikmapniklayer.c

.include <bsd.port.mk>
