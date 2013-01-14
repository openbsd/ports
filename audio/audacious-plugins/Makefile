# $OpenBSD: Makefile,v 1.56 2013/01/14 02:26:19 brad Exp $

SHARED_ONLY =		Yes

COMMENT =		input and output plugins for Audacious

V =			3.3.3

DISTNAME =		audacious-plugins-$V
REVISION =		0
CATEGORIES =		audio multimedia

HOMEPAGE =		http://audacious-media-player.org/

# BSD / GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += FLAC GL SDL X11 Xcomposite Xext Xrender atk-1.0 audcore
WANTLIB += audgui audtag avcodec avformat avutil cairo cairo-gobject
WANTLIB += cddb cdio cdio_cdda cue curl dbus-1 dbus-glib-1 expat
WANTLIB += faad fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gtk-3 m mms modplug
WANTLIB += mp3lame mpg123 neon notify ogg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread pthread-stubs samplerate
WANTLIB += sndfile sndio stdc++ vorbis vorbisenc vorbisfile wavpack
WANTLIB += xcb xcb-render xcb-shm xml2 z

MASTER_SITES =		http://distfiles.audacious-media-player.org/

EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/gettext

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		audio/audacious>=${V}
# needed for the gio plugin
RUN_DEPENDS +=		x11/gnome/gvfs

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
			graphics/ffmpeg>=20121026 \
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
			--disable-adplug \
			--disable-alsa \
			--disable-amidiplug \
			--disable-bs2b \
			--disable-jack \
			--disable-lirc \
			--disable-oss4 \
			--disable-pulse \
			--disable-sid
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

NO_REGRESS =		Yes

.include <bsd.port.mk>
