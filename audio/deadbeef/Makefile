# $OpenBSD: Makefile,v 1.8 2013/08/20 22:05:46 zhuk Exp $

SHARED_ONLY =		Yes

COMMENT =		DeaDBeeF is an audio player
DISTNAME =		deadbeef-0.5.6
REVISION =		3
CATEGORIES =		audio

HOMEPAGE =		http://deadbeef.sourceforge.net/

# GPLv2 & LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += FLAC GL ICE Imlib2 SM X11 Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c
WANTLIB += cairo cddb cdio crypto curl dbus-1 expat faad ffi
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz idn m mad mms mpcdec ogg
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += pthread pthread-stubs sndfile sndio ssl vorbis vorbisenc
WANTLIB += vorbisfile wavpack xcb xcb-render xcb-shm z zip

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
			graphics/imlib2 \
			multimedia/libmms \
			net/curl \
			x11/dbus \
			x11/gtk+2

USE_GMAKE =		Yes
USE_LIBTOOL =		gnu
LIBTOOL_FLAGS =		--tag=disable-static

NO_TEST =		Yes

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
			--disable-mono2stereo \
			--disable-abstract-socket \
			--disable-gtk3
CONFIGURE_ENV +=	CPPFLAGS='-I${LOCALBASE}/lib/libzip/include -I${X11BASE}/include' \
			LDFLAGS='-L${LOCALBASE}/lib -L${X11BASE}/lib'

post-patch:
	@mkdir -p ${WRKSRC}/m4 # XXX need for autoreconf
	@mkdir -p ${WRKSRC}/plugins/sndio
	@cp ${FILESDIR}/{Makefile.am,sndio.c} ${WRKSRC}/plugins/sndio

pre-configure:
	@cd ${WRKSRC}; env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoreconf

post-install:
	@rm -f ${PREFIX}/lib/deadbeef/*.la

.include <bsd.port.mk>
