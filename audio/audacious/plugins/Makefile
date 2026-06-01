COMMENT =		input and output plugins for Audacious

DISTNAME =		audacious-plugins-${VERSION}

# BSD / GPL
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC Qt5Core Qt5Gui Qt5Widgets Qt5X11Extras
WANTLIB += X11 adplug audcore audqt audtag avcodec avformat avutil
WANTLIB += binio cddb cdio cdio_cdda cue curl faad gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 intl m mms modplug mp3lame
WANTLIB += mpg123 neon notify ogg opusfile samplerate sndfile
WANTLIB += sndio soxr vorbis vorbisenc vorbisfile wavpack xml2
WANTLIB += z

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

CONFIGURE_ARGS =	-Dalsa=false \
			-Damidiplug=false \
			-Dbs2b=false \
			-Djack=false \
			-Dlirc=false \
			-Dopenmpt=false \
			-Dpipewire=false \
			-Dpulse=false \
			-Dqtaudio=false \
			-Dsdlout=false \
			-Dsid=false

.include <bsd.port.mk>
