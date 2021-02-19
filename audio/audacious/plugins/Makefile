# $OpenBSD: Makefile,v 1.7 2021/02/19 20:44:45 edd Exp $

COMMENT =		input and output plugins for Audacious

DISTNAME =		audacious-plugins-${VERSION}

FLAVORS =		qt5
FLAVOR ?=

# BSD / GPL
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC audcore audtag avcodec avformat avutil
WANTLIB += cddb cdio cdio_cdda cue curl faad gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 iconv intl m mms modplug mp3lame mpg123 neon notify
WANTLIB += ogg samplerate sndfile sndio soxr vorbis vorbisenc vorbisfile
WANTLIB += wavpack xml2 z

.if ${FLAVOR:Mqt5}
WANTLIB += GL Qt5Core Qt5Gui Qt5OpenGL Qt5Widgets audqt
.else
WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 audgui cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gmodule-2.0 gtk-x11-2.0 harfbuzz pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0
.endif

# needed for the gio plugin
RUN_DEPENDS =		x11/gnome/gvfs
LIB_DEPENDS =		audio/faad>=2.7 \
			audio/flac \
			audio/lame \
			audio/libcdio \
			audio/libcdio-paranoia \
			audio/libcue \
			audio/libmodplug \
			audio/libsamplerate \
			audio/libsndfile \
			audio/libsoxr \
			audio/libvorbis \
			audio/mpg123 \
			audio/wavpack \
			devel/libnotify>=0.7.2 \
			graphics/ffmpeg \
			multimedia/libmms \
			net/curl \
			net/neon \
			textproc/libxml

.if ${FLAVOR:Mqt5}
LIB_DEPENDS +=		audacious-player->=${VERSION}-qt5:audio/audacious/player,qt5
.else
LIB_DEPENDS +=		audacious-player->=${VERSION}-!qt5:audio/audacious/player
.endif

CONFIGURE_ARGS =	--disable-alsa \
			--disable-amidiplug \
			--disable-bs2b \
			--disable-jack \
			--disable-lirc \
			--disable-oss4 \
			--disable-pulse \
			--disable-qtaudio \
			--disable-sdlout \
			--disable-sid
CONFIGURE_ENV =		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

.include <bsd.port.mk>
