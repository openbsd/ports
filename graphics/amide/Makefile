# $OpenBSD: Makefile,v 1.17 2011/05/17 08:10:00 jasper Exp $

COMMENT =	Amide a Medical Imaging Data Examiner

DISTNAME =	amide-0.9.2
REVISION =	7
CATEGORIES =	graphics

HOMEPAGE =	http://amide.sourceforge.net/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =   Yes
PERMIT_PACKAGE_FTP =     Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =   Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm art_lgpl_2 atk-1.0
WANTLIB += avcodec avutil c cairo drm expat faac fontconfig freetype
WANTLIB += gailutil gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnomecanvas-2 gobject-2.0 gsl gslcblas
WANTLIB += gsm gthread-2.0 gtk-x11-2.0 m mdc mp3lame ogg orc-0.4
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs schroedinger-1.0 speex stdc++
WANTLIB += theoradec theoraenc vorbis vorbisenc vpx x264 xcb xcb-render
WANTLIB += xcb-shm xml2 z

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
		graphics/ffmpeg>=20100512

USE_LIBTOOL =	Yes
USE_GMAKE =	Yes
USE_GROFF =		Yes

AUTOCONF_VERSION =	2.63
CONFIGURE_STYLE =	autoconf gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include ${CFLAGS}" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			XMEDCON_CONFIG="${LOCALBASE}/bin/xmedcon-config"
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-xmedcontest \
			--disable-libfame \
			--disable-libdcmdata \
			--enable-ffmpeg

NO_REGRESS =	Yes

post-extract:
	@rm -f ${WRKSRC}/src/ui_common.c.orig

.include <bsd.port.mk>
