# $OpenBSD: Makefile,v 1.35 2017/07/27 09:55:45 sthen Exp $

COMMENT =	GPS track manager

DISTNAME =	viking-1.6.2
REVISION =	2

CATEGORIES =	geo x11

HOMEPAGE =	http://viking.sourceforge.net/
MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 bz2 c cairo crypto curl expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gexiv2 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gps gthread-2.0 gtk-x11-2.0 m magic nghttp2
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread sqlite3 ssl z
WANTLIB += ${COMPILER_LIBCXX}

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=viking/}
EXTRACT_SUFX = .tar.bz2

MODULES =	devel/gettext textproc/intltool x11/gnome

COMPILER =	gcc
MODGCC4_ARCHS =	amd64 i386 powerpc sparc64

CONFIGURE_STYLE =	gnu
# to ensure X11 libs are found when checking for -lmapnik
# CONFIGURE_ENV +=	CXXFLAGS="-L${X11BASE}/lib"
MODGNOME_TOOLS += desktop-file-utils gtk-update-icon-cache yelp

USE_GMAKE =	Yes

# until mapnik is fixed..
CONFIGURE_ARGS +=	--disable-mapnik
LIB_DEPENDS =	archivers/bzip2 \
		databases/sqlite3 \
		devel/libidn \
		devel/libmagic \
		graphics/libgexiv2 \
		misc/gpsd \
		net/curl \
		x11/gtk+2
RUN_DEPENDS =	geo/gpsbabel

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/vikmapniklayer.c

.include <bsd.port.mk>
