# $OpenBSD: Makefile,v 1.38 2011/04/05 19:55:38 landry Exp $

COMMENT =		Music Player Daemon
DISTNAME =		mpd-0.16.2
CATEGORIES =		audio
HOMEPAGE =		http://www.musicpd.org/
MAINTAINER =		Tobias Ulmer <tobiasu@tmux.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=		c m pthread ogg z stdc++ sndio curl glib-2.0 gthread-2.0
WANTLIB +=		audiofile ao samplerate sndfile FLAC id3tag mad mikmod

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=musicpd/}

MODULES =		devel/gettext

LIB_DEPENDS =		devel/libaudiofile \
			audio/libao \
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
CONFIGURE_ARGS +=	--enable-ao \
			--enable-pipe-output \
			--disable-alsa \
			--disable-oss \
			--disable-pulse \
			--disable-jack \
			--enable-mikmod \
			--enable-curl \
			--disable-wavpack \
			--bindir=${PREFIX}/sbin \
			--with-zeroconf=no \
			--disable-cue \
			--disable-sqlite \
			--disable-mms \
			--disable-modplug \
			--disable-sidplay \
			--disable-ffmpeg \
			--enable-mpc \
			--disable-libwrap \
			--enable-lsr \
			--enable-audiofile \
			--disable-gme \
			--enable-mad \
			--disable-mpg123 \
			--enable-sndfile \
			--disable-twolame-encoder

# OggFLAC and tremor tests, initgroups(3)
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include -D_BSD_SOURCE"

.if ${FLAVOR:L:Mtremor}
CONFIGURE_ARGS +=	--with-tremor \
			--disable-oggflac \
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
			audio/libmpcdec
CONFIGURE_ARGS +=	--enable-aac \
			--enable-shout \
			--enable-vorbis-encoder
.endif

USE_LIBTOOL =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mpd
	${INSTALL_DATA} ${WRKSRC}/doc/mpdconf.example \
		${PREFIX}/share/examples/mpd/mpd.conf

.include <bsd.port.mk>
