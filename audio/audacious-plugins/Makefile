# $OpenBSD: Makefile,v 1.50 2012/07/05 09:29:43 dcoppa Exp $

SHARED_ONLY =		Yes

COMMENT =		input and output plugins for audacious

V =			3.2.4

DISTNAME =		audacious-plugins-$V

CATEGORIES =		audio multimedia

HOMEPAGE =		http://audacious-media-player.org/

# GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += FLAC GL SDL X11 Xcomposite Xrender atk-1.0 audcore
WANTLIB += audgui audtag cairo cairo-gobject cddb cdio cdio_cdda
WANTLIB += cue curl dbus-1 dbus-glib-1 expat faad fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB += m mms modplug mp3lame mpg123 neon notify ogg pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread-stubs
WANTLIB += samplerate sndfile sndio stdc++ vorbis vorbisenc vorbisfile
WANTLIB += wavpack xcb xcb-render xcb-shm xml2 z

MASTER_SITES =		http://distfiles.audacious-media-player.org/

EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/gettext

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		audio/audacious>=${V}

LIB_DEPENDS =		audio/faad>=2.7 \
			audio/flac \
			audio/lame \
			audio/libcdio \
			audio/libcue \
			audio/libmodplug \
			audio/libsamplerate \
			audio/libsndfile \
			audio/libvorbis \
			audio/mpg123 \
			audio/wavpack \
			devel/libnotify>=0.7.2 \
			devel/sdl \
			multimedia/libmms \
			net/curl \
			net/neon \
			textproc/libxml \
			x11/gtk+3 \
			x11/dbus-glib

USE_GMAKE =		Yes

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.69
CONFIGURE_ARGS +=	--enable-ipv6 \
			--disable-pulse \
			--disable-adplug \
			--disable-sid \
			--disable-oss \
			--disable-alsa \
			--disable-amidiplug \
			--disable-mtp_up \
			--disable-ffaudio \
			--disable-jack \
			--disable-bs2b
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

NO_REGRESS =		Yes

post-patch:
	@mkdir -p ${WRKSRC}/src/sndio
	@cp ${FILESDIR}/{Makefile,sndio.c} ${WRKSRC}/src/sndio

.include <bsd.port.mk>
