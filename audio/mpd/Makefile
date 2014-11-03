# $OpenBSD: Makefile,v 1.65 2014/11/03 12:12:12 dcoppa Exp $

COMMENT =		Music Player Daemon
DISTNAME =		mpd-0.19.2
CATEGORIES =		audio
HOMEPAGE =		http://www.musicpd.org/
MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		FLAC ao audiofile avcodec avformat \
			avutil bz2 c cdio cdio_cdda \
			cdio_paranoia curl expat glib-2.0 \
			gthread-2.0 icudata icui18n icuuc \
			id3tag m mad mikmod mpdclient ogg \
			opus pthread samplerate sndfile \
			sndio z

MASTER_SITES =		http://www.musicpd.org/download/mpd/stable/

MODULES =		devel/gettext gcc4
MODGCC4_ARCHS =		i386 amd64 powerpc sparc64 alpha
MODGCC4_LANGS =		c++

BUILD_DEPENDS =		devel/boost

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
			devel/glib2 \
			graphics/ffmpeg \
			net/curl \
			textproc/icu4c

FLAVORS =		tremor
FLAVOR ?=

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--bindir=${PREFIX}/sbin \
			--disable-alsa \
			--disable-epoll \
			--disable-fluidsynth \
			--disable-gme \
			--disable-inotify \
			--disable-jack \
			--disable-libwrap \
			--disable-mms \
			--disable-modplug \
			--disable-mp4v2 \
			--disable-mpg123 \
			--disable-nfs \
			--disable-neighbor-plugins \
			--disable-oss \
			--disable-openal \
			--disable-pulse \
			--disable-roar \
			--disable-sidplay \
			--disable-shine-encoder \
			--disable-smbclient \
			--disable-soundcloud \
			--disable-soxr \
			--disable-sqlite \
			--disable-systemd-daemon \
			--disable-twolame-encoder \
			--disable-upnp \
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
			--with-pollmethod=poll \
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
