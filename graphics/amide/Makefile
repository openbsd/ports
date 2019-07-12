# $OpenBSD: Makefile,v 1.55 2019/07/12 21:07:46 sthen Exp $

COMMENT =	Amide a Medical Imaging Data Examiner

DISTNAME =	amide-1.0.5
CATEGORIES =	graphics
REVISION =	11

HOMEPAGE =	http://amide.sourceforge.net/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage 
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2
WANTLIB += atk-1.0 avcodec avutil c cairo expat fontconfig
WANTLIB += freetype gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnomecanvas-2 gobject-2.0
WANTLIB += gsl gslcblas gsm gthread-2.0 gtk-x11-2.0 iconv intl m mdc mp3lame
WANTLIB += ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread speex ${COMPILER_LIBCXX} vorbis
WANTLIB += vorbisenc vpx x264 xcb xcb-render xcb-shm xml2 z
WANTLIB += dbus-1 dbus-glib-1 ffi graphite2 opus
WANTLIB += harfbuzz xvidcore lzma swresample x265

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=amide/}

EXTRACT_SUFX =	.tgz

MODULES =	textproc/intltool \
		x11/gnome

MODGNOME_TOOLS += desktop-file-utils yelp

BUILD_DEPENDS =	devel/m4

USE_GMAKE=	Yes

LIB_DEPENDS =	devel/gsl>=1.6 \
		x11/gnome/libgnomecanvas \
		graphics/xmedcon \
		graphics/ffmpeg \
		devel/gconf2

AUTOCONF_VERSION =	2.69
CONFIGURE_STYLE =	autoconf
CONFIGURE_ENV =		XMEDCON_CONFIG="${LOCALBASE}/bin/xmedcon-config"
CONFIGURE_ARGS +=	--disable-xmedcontest \
			--disable-libfame \
			--disable-libdcmdata \
			--enable-ffmpeg

NO_TEST =	Yes

.include <bsd.port.mk>
