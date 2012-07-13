# $OpenBSD: Makefile,v 1.47 2012/07/13 14:10:36 dcoppa Exp $

COMMENT =		Music Player Daemon
DISTNAME =		mpd-0.16.8
REVISION =		1
CATEGORIES =		audio
HOMEPAGE =		http://www.musicpd.org/
MAINTAINER =		David Coppa <dcoppa@openbsd.org>

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
CONFIGURE_ARGS +=	--bindir=${PREFIX}/sbin \
			--disable-alsa \
			--disable-cue \
			--disable-ffmpeg \
			--disable-gme \
			--disable-jack \
			--disable-libwrap \
			--disable-mms \
			--disable-modplug \
			--disable-mpg123 \
			--disable-oss \
			--disable-pulse \
			--disable-sidplay \
			--disable-sqlite \
			--disable-twolame-encoder \
			--disable-wavpack \
			--enable-ao \
			--enable-audiofile \
			--enable-curl \
			--enable-lsr \
			--enable-mad \
			--enable-mikmod \
			--enable-mpc \
			--enable-pipe-output \
			--enable-sndfile \
			--with-zeroconf=no

# OggFLAC and tremor tests, initgroups(3)
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include -D_BSD_SOURCE"

.if ${FLAVOR:Mtremor}
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
			audio/musepack
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
