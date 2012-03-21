# $OpenBSD: Makefile,v 1.41 2012/03/21 16:13:25 dcoppa Exp $

SHARED_ONLY =		Yes

COMMENT =		input and output plugins for audacious

V =			3.2
DISTNAME =		audacious-plugins-$V
REVISION =		0

CATEGORIES =		audio multimedia

HOMEPAGE =		http://audacious-media-player.org/

# GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 audcore audgui cairo cairo-gobject
WANTLIB += expat fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread pthread-stubs samplerate xcb
WANTLIB += xcb-render xcb-shm z ${MODGETTEXT_WANTLIB}
WANTLIB += FLAC SDL audtag cddb cdio cdio_cdda cue curl
WANTLIB += dbus-1 dbus-glib-1 faad modplug mp3lame mpg123 neon notify ogg
WANTLIB += sndfile sndio stdc++ vorbis vorbisenc vorbisfile wavpack xml2

MASTER_SITES =		http://distfiles.audacious-media-player.org/

EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/gettext

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		audio/audacious>=${V}

LIB_DEPENDS =		audio/faad \
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
			net/curl \
			net/neon \
			textproc/libxml \
			x11/gtk+3 \
			x11/dbus-glib

USE_GMAKE =		Yes

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.68
CONFIGURE_ARGS +=	--enable-ipv6 \
			--enable-sndio \
			--disable-pulse \
			--disable-adplug \
			--disable-sid \
			--disable-oss \
			--disable-alsa \
			--disable-amidiplug \
			--disable-mms \
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
