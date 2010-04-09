# $OpenBSD: Makefile,v 1.21 2010/04/09 11:39:33 jasper Exp $

COMMENT =		Music Player Daemon
DISTNAME =		mpd-0.15.9
CATEGORIES =		audio
HOMEPAGE =		http://www.musicpd.org/
MAINTAINER =		Tobias Ulmer <tobiasu@tmux.org>

# GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m pthread ogg z intl stdc++ sndio

MASTER_SITES =		${HOMEPAGE}uploads/files/
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=musicpd/}

MODULES =		converters/libiconv

LIB_DEPENDS =		audiofile::devel/libaudiofile \
			ao::audio/libao \
			samplerate::audio/libsamplerate \
			FLAC::audio/flac \
			id3tag::audio/libid3tag \
			mad::audio/libmad \
			mikmod::audio/libmikmod \
			curl::net/curl \
			glib-2.0,gthread-2.0::devel/glib2 \

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
			--disable-mpc
# OggFLAC and tremor tests, initgroups(3)
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include -D_BSD_SOURCE"

.if ${FLAVOR:L:Mtremor}
CONFIGURE_ARGS +=	--with-tremor \
			--disable-oggflac \
			--disable-shout \
			--disable-vorbis-encoder \
			--disable-lame-encoder \
			--disable-aac
LIB_DEPENDS +=		vorbisidec::audio/tremor
.else

WANTLIB +=		theora
LIB_DEPENDS +=		vorbis,vorbisfile,vorbisenc::audio/libvorbis \
			speex::audio/speex \
			mp3lame::audio/lame \
			shout::net/libshout \
			faad,mp4ff:faad->=2.6.1p0:audio/faad
CONFIGURE_ARGS +=	--enable-aac
.endif

USE_LIBTOOL =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mpd
	${INSTALL_DATA} ${WRKSRC}/doc/mpdconf.example \
		${PREFIX}/share/examples/mpd/mpd.conf

.include <bsd.port.mk>
