# $OpenBSD: Makefile,v 1.29 2013/09/27 17:49:05 ajacoutot Exp $

COMMENT =	Amide a Medical Imaging Data Examiner

DISTNAME =	amide-0.9.2
REVISION =	17
CATEGORIES =	graphics

HOMEPAGE =	http://amide.sourceforge.net/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =   Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm art_lgpl_2
WANTLIB += atk-1.0 avcodec avutil c cairo drm expat fontconfig
WANTLIB += freetype gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnomecanvas-2 gobject-2.0
WANTLIB += gsl gslcblas gsm gthread-2.0 gtk-x11-2.0 m mdc mp3lame
WANTLIB += ogg orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs schroedinger-1.0
WANTLIB += speex stdc++ theoradec theoraenc vorbis vorbisenc vpx
WANTLIB += x264 xcb xcb-render xcb-shm xml2 z
WANTLIB += dbus-1 dbus-glib-1 ffi
WANTLIB += harfbuzz xvidcore

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=amide/}

EXTRACT_SUFX =	.tgz

MODULES =	devel/gettext \
		textproc/intltool

BUILD_DEPENDS =	devel/m4 \
		x11/gnome/doc-utils
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gnome/yelp
LIB_DEPENDS =	devel/gsl>=1.6 \
		x11/gnome/libgnomecanvas \
		graphics/xmedcon \
		graphics/ffmpeg>=20121026 \
		devel/gconf2

USE_GMAKE =	Yes
USE_GROFF =		Yes

AUTOCONF_VERSION =	2.63
CONFIGURE_STYLE =	autoconf
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			XMEDCON_CONFIG="${LOCALBASE}/bin/xmedcon-config"
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-xmedcontest \
			--disable-libfame \
			--disable-libdcmdata \
			--enable-ffmpeg

NO_TEST =	Yes

post-extract:
	@rm -f ${WRKSRC}/src/ui_common.c.orig

.include <bsd.port.mk>
