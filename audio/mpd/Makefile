# $OpenBSD: Makefile,v 1.55 2013/09/19 15:02:16 dcoppa Exp $

COMMENT =		Music Player Daemon
DISTNAME =		mpd-0.17.5
CATEGORIES =		audio
HOMEPAGE =		http://www.musicpd.org/
MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		FLAC ao audiofile c cdio cdio_cdda cdio_paranoia \
			curl glib-2.0 gthread-2.0 id3tag m mad \
			mikmod ogg pthread samplerate sndfile sndio \
			stdc++ z

MASTER_SITES =		http://www.musicpd.org/download/mpd/stable/

MODULES =		devel/gettext

LIB_DEPENDS =		devel/libaudiofile \
			audio/libao \
			audio/libcdio \
			audio/libsamplerate \
			audio/flac \
			audio/libid3tag \
			audio/libmad \
			audio/libmikmod \
			net/curl \
			devel/glib2

FLAVORS =		tremor
FLAVOR ?=

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--bindir=${PREFIX}/sbin \
			--disable-alsa \
			--disable-ffmpeg \
			--disable-gme \
			--disable-inotify \
			--disable-jack \
			--disable-libwrap \
			--disable-mms \
			--disable-modplug \
			--disable-mpg123 \
			--disable-oss \
			--disable-pulse \
			--disable-roar \
			--disable-sidplay \
			--disable-soundcloud \
			--disable-soup \
			--disable-sqlite \
			--disable-systemd-daemon \
			--disable-twolame-encoder \
			--disable-wavpack \
			--enable-ao \
			--enable-audiofile \
			--enable-cdio-paranoia \
			--enable-curl \
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
			shout faad mp4ff mpcdec
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
