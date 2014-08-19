# $OpenBSD: Makefile,v 1.60 2014/08/19 06:39:05 landry Exp $

COMMENT =		Music Player Daemon
DISTNAME =		mpd-0.18.11
REVISION =		0
CATEGORIES =		audio
HOMEPAGE =		http://www.musicpd.org/
MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		FLAC ao audiofile avcodec avformat avutil c \
			cdio cdio_cdda cdio_paranoia curl glib-2.0 \
			gthread-2.0 id3tag m mad mikmod ogg pthread \
			samplerate sndfile sndio bz2 mpdclient opus z

MASTER_SITES =		http://www.musicpd.org/download/mpd/stable/

MODULES =		devel/gettext gcc4
MODGCC4_ARCHS =		i386 amd64 powerpc sparc64 alpha
MODGCC4_LANGS =		c++

LIB_DEPENDS =		devel/libaudiofile \
			audio/libao \
			audio/libcdio \
			audio/libsamplerate \
			audio/flac \
			audio/libid3tag \
			audio/libmad \
			audio/libmikmod \
			audio/opus \
			audio/libmpdclient \
			graphics/ffmpeg \
			net/curl \
			devel/glib2

FLAVORS =		tremor
FLAVOR ?=

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--bindir=${PREFIX}/sbin \
			--disable-alsa \
			--disable-fluidsynth \
			--disable-gme \
			--disable-inotify \
			--disable-jack \
			--disable-libwrap \
			--disable-mms \
			--disable-modplug \
			--disable-mpg123 \
			--disable-oss \
			--disable-openal \
			--disable-pulse \
			--disable-roar \
			--disable-sidplay \
			--disable-soundcloud \
			--disable-sqlite \
			--disable-systemd-daemon \
			--disable-twolame-encoder \
			--disable-wavpack \
			--enable-ao \
			--enable-audiofile \
			--enable-cdio-paranoia \
			--enable-curl \
			--enable-ffmpeg \
			--enable-lsr \
			--enable-mad \
			--enable-mikmod \
			--enable-mpc \
			--enable-pipe-output \
			--enable-sndfile \
			--with-zeroconf=no \
			--without-systemdsystemunitdir

# OggFLAC and tremor tests, initgroups(3)
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include -D_BSD_SOURCE"

.if ${FLAVOR:Mtremor}
CONFIGURE_ARGS +=	--with-tremor \
			--disable-shout \
			--disable-vorbis-encoder \
			--disable-lame-encoder \
			--disable-aac \
			--disable-mpc
LIB_DEPENDS +=		audio/tremor
WANTLIB +=		vorbisidec
.else
WANTLIB +=		theora vorbis vorbisfile vorbisenc speex mp3lame \
			shout faad mpcdec
LIB_DEPENDS +=		audio/libvorbis \
			audio/speex \
			audio/lame \
			net/libshout \
			audio/faad>=2.6.1p0 \
			audio/musepack
CONFIGURE_ARGS +=	--enable-aac \
			--enable-shout \
			--enable-vorbis-encoder
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mpd
	${INSTALL_DATA} ${WRKSRC}/doc/mpdconf.example \
		${PREFIX}/share/examples/mpd/mpd.conf

.include <bsd.port.mk>
