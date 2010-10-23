# $OpenBSD: Makefile,v 1.9 2010/10/23 12:35:10 landry Exp $

COMMENT =	Amide a Medical Imaging Data Examiner

DISTNAME =	amide-0.9.2
REVISION =	3
CATEGORIES =	graphics

HOMEPAGE =	http://amide.sourceforge.net/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =   Yes
PERMIT_PACKAGE_FTP =     Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =   Yes

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0
WANTLIB += c cairo crypto dbus-1 dbus-glib-1 expat fontconfig
WANTLIB += freetype gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread ssl stdc++ util xml2 z
WANTLIB += GL Xxf86vm drm xcb-shm gnomevfs-2
WANTLIB += pthread-stubs xcb gsl gslcblas gnomecanvas-2
WANTLIB += faac faad mp3lame ogg orc-0.4 schroedinger-1.0
WANTLIB += theora vorbis vorbisenc x264 mdc avcodec avutil
WANTLIB += gsm speex xcb-render
                
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=amide/}

EXTRACT_SUFX =	.tgz

MODULES =	devel/gettext \
		textproc/intltool

BUILD_DEPENDS =	::devel/m4 \
		::x11/gnome/doc-utils
RUN_DEPENDS =	::devel/desktop-file-utils \
		::x11/gnome/yelp
LIB_DEPENDS =	:gsl->=1.6:devel/gsl \
		::x11/gnome/libgnomecanvas \
		::x11/gnome/vfs2 \
		::graphics/xmedcon \
		:ffmpeg->=20100512:graphics/ffmpeg

USE_X11 =	Yes
USE_LIBTOOL =	Yes
USE_GMAKE =	Yes
USE_GROFF =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include ${CFLAGS}" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PKG_CONFIG_PATH="${X11BASE}/lib/pkgconfig" \
			XMEDCON_CONFIG="${LOCALBASE}/bin/xmedcon-config"
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-scrollkeeper \
			--disable-xmedcontest \
			--disable-libfame \
			--disable-libdcmdata \
			--enable-ffmpeg

NO_REGRESS =	Yes

post-extract:
	@rm -f ${WRKSRC}/src/ui_common.c.orig

.include <bsd.port.mk>
