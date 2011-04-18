# $OpenBSD: Makefile,v 1.15 2011/04/18 22:18:33 sthen Exp $

COMMENT =	Amide a Medical Imaging Data Examiner

DISTNAME =	amide-0.9.2
REVISION =	5
CATEGORIES =	graphics

HOMEPAGE =	http://amide.sourceforge.net/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =   Yes
PERMIT_PACKAGE_FTP =     Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =   Yes

WANTLIB += GL ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm art_lgpl_2
WANTLIB += atk-1.0 avcodec avutil c cairo crypto dbus-1 dbus-glib-1
WANTLIB += drm expat faac fontconfig freetype gailutil gconf-2
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnomecanvas-2 gnomevfs-2 gobject-2.0 gsl gslcblas gsm
WANTLIB += gthread-2.0 gtk-x11-2.0 m mdc mp3lame ogg orc-0.4 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs schroedinger-1.0 speex ssl stdc++ theoradec
WANTLIB += theoraenc util vorbis vorbisenc vpx x264 xcb xcb-render
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
		x11/gnome/vfs2 \
		graphics/xmedcon \
		graphics/ffmpeg>=20100512

USE_LIBTOOL =	Yes
USE_GMAKE =	Yes
USE_GROFF =		Yes

CONFIGURE_STYLE =	gnu
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
