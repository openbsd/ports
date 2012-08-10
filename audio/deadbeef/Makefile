# $OpenBSD: Makefile,v 1.2 2012/08/10 17:25:01 shadchin Exp $

SHARED_ONLY =		Yes

COMMENT =		DeaDBeeF is an audio player
DISTNAME =		deadbeef-0.5.5
REVISION =		0
CATEGORIES =		audio

HOMEPAGE =		http://deadbeef.sourceforge.net/

# GPLv2 & LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += FLAC GL ICE Imlib2 SM X11 Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 avcodec
WANTLIB += avformat avutil bz2 c cairo cddb cdio crypto curl dbus-1
WANTLIB += expat faad ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gsm gthread-2.0
WANTLIB += gtk-x11-2.0 idn m mad mms mp3lame mpcdec ogg orc-0.4
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs schroedinger-1.0 sndfile
WANTLIB += sndio speex ssl theoradec theoraenc vorbis vorbisenc
WANTLIB += vorbisfile vpx wavpack x264 xcb xcb-render xcb-shm
WANTLIB += xvidcore z zip

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=deadbeef/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/gettext \
			textproc/intltool

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS +=	devel/yasm
.endif

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic

LIB_DEPENDS =		archivers/libzip \
			audio/faad \
			audio/flac \
			audio/libcdio \
			audio/libmad \
			audio/libogg \
			audio/libsndfile \
			audio/libvorbis \
			audio/musepack \
			audio/wavpack \
			graphics/ffmpeg \
			graphics/imlib2 \
			multimedia/libmms \
			net/curl \
			x11/dbus \
			x11/gtk+2

USE_GMAKE =		Yes
USE_LIBTOOL =		gnu
LIBTOOL_FLAGS =		--tag=disable-static

NO_REGRESS =		Yes

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-static \
			--disable-adplug \
			--disable-alsa \
			--disable-gme \
			--disable-oss \
			--disable-pulse \
			--disable-sid \
			--disable-wildmidi \
			--disable-supereq \
			--disable-src \
			--disable-mono2stereo
CONFIGURE_ENV +=	CPPFLAGS='-I${LOCALBASE}/lib/libzip/include -I${X11BASE}/include' \
			LDFLAGS='-L${LOCALBASE}/lib -L${X11BASE}/lib'

post-patch:
	@mkdir -p ${WRKSRC}/m4 # XXX need for autoreconf
	@mkdir -p ${WRKSRC}/plugins/sndio
	@cp ${FILESDIR}/{Makefile.am,sndio.c} ${WRKSRC}/plugins/sndio

pre-configure:
	@cd ${WRKSRC}; env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoreconf

.include <bsd.port.mk>
