# $OpenBSD: Makefile,v 1.76 2015/06/22 08:09:28 dcoppa Exp $

BROKEN-hppa =		no atomic ops
COMMENT =		Music Player Daemon
DISTNAME =		mpd-0.19.10
CATEGORIES =		audio
HOMEPAGE =		http://www.musicpd.org/
MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		FLAC ao audiofile avcodec avformat \
			avutil bz2 c cdio cdio_cdda \
			cdio_paranoia curl expat faad glib-2.0 \
			gthread-2.0 icudata icui18n icuuc id3tag \
			m mikmod mp3lame mpcdec mpdclient ogg \
			opus pthread samplerate shout sndfile \
			sndio speex sqlite3 theora vorbis \
			vorbisenc vorbisfile z

MASTER_SITES =		http://www.musicpd.org/download/mpd/stable/

MODULES =		devel/gettext gcc4
MODGCC4_ARCHS =		i386 amd64 powerpc sparc64 alpha hppa
MODGCC4_LANGS =		c++

BUILD_DEPENDS =		devel/boost

LIB_DEPENDS =		audio/faad>=2.6.1p0 \
			audio/flac \
			audio/lame \
			audio/libao \
			audio/libcdio \
			audio/libid3tag \
			audio/libmikmod \
			audio/libmpdclient \
			audio/libsamplerate \
			audio/libvorbis \
			audio/musepack \
			audio/opus \
			devel/glib2 \
			devel/libaudiofile \
			graphics/ffmpeg \
			net/curl \
			net/libshout \
			textproc/icu4c

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--bindir=${PREFIX}/sbin \
			--disable-adplug \
			--disable-alsa \
			--disable-epoll \
			--disable-fluidsynth \
			--disable-gme \
			--disable-inotify \
			--disable-jack \
			--disable-libwrap \
			--disable-mad \
			--disable-mms \
			--disable-modplug \
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
			--disable-systemd-daemon \
			--disable-twolame-encoder \
			--disable-upnp \
			--disable-wavpack \
			--disable-wildmidi \
			--enable-aac \
			--enable-ao \
			--enable-audiofile \
			--enable-bzip2 \
			--enable-cdio-paranoia \
			--enable-curl \
			--enable-ffmpeg \
			--enable-lame-encoder \
			--enable-lsr \
			--enable-mikmod \
			--enable-mpc \
			--enable-opus \
			--enable-pipe-output \
			--enable-shout \
			--enable-sndfile \
			--enable-sqlite \
			--enable-vorbis \
			--enable-vorbis-encoder \
			--enable-wave-encoder \
			--enable-zlib \
			--with-pollmethod=poll \
			--with-zeroconf=no \
			--without-systemdsystemunitdir

# OggFLAC tests, initgroups(3)
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include -D_BSD_SOURCE"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mpd
	${INSTALL_DATA} ${WRKSRC}/doc/mpdconf.example \
		${PREFIX}/share/examples/mpd/mpd.conf

.include <bsd.port.mk>
