COMMENT =		input and output plugins for Audacious

DISTNAME =		audacious-plugins-${VERSION}

# BSD / GPL
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC GL Qt5Core Qt5Gui Qt5OpenGL
WANTLIB += Qt5Widgets Qt5X11Extras X11 adplug audcore audqt audtag
WANTLIB += avcodec avformat avutil binio cddb cdio cdio_cdda cue
WANTLIB += curl faad gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += iconv intl m mms modplug mp3lame mpg123 neon notify
WANTLIB += ogg opusfile samplerate sndfile sndio soxr vorbis vorbisenc
WANTLIB += vorbisfile wavpack xml2 z

# needed for the gio plugin
RUN_DEPENDS =		x11/gnome/gvfs
LIB_DEPENDS =		audio/adplug \
			audio/audacious/player>=${VERSION} \
			audio/faad>=2.7 \
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
			audio/opusfile \
			audio/wavpack \
			devel/libnotify>=0.7.2 \
			graphics/ffmpeg \
			multimedia/libmms \
			net/curl \
			net/neon \
			textproc/libxml \
			x11/qt5/qtx11extras

CONFIGURE_ARGS =	--disable-alsa \
			--disable-amidiplug \
			--disable-bs2b \
			--disable-jack \
			--disable-lirc \
			--disable-openmpt \
			--disable-pipewire \
			--disable-pulse \
			--disable-qtaudio \
			--disable-sdlout \
			--disable-sid
CONFIGURE_ENV =		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

.include <bsd.port.mk>
