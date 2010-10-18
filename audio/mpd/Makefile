# $OpenBSD: Makefile,v 1.25 2010/10/18 16:52:45 espie Exp $

COMMENT =		Music Player Daemon
DISTNAME =		mpd-0.15.12
CATEGORIES =		audio
HOMEPAGE =		http://www.musicpd.org/
MAINTAINER =		Tobias Ulmer <tobiasu@tmux.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m pthread ogg z stdc++ sndio curl glib-2.0 gthread-2.0
WANTLIB +=		audiofile ao samplerate FLAC id3tag mad mikmod

MASTER_SITES =		${HOMEPAGE}/uploads/files/ \
			${MASTER_SITE_SOURCEFORGE:=musicpd/}

MODULES =		devel/gettext

LIB_DEPENDS =		::devel/libaudiofile \
			::audio/libao \
			::audio/libsamplerate \
			::audio/flac \
			::audio/libid3tag \
			::audio/libmad \
			::audio/libmikmod \
			::net/curl \
			::devel/glib2

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
			--enable-mpc
# OggFLAC and tremor tests, initgroups(3)
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include -D_BSD_SOURCE"
			USE_GROFF =	Yes

.if ${FLAVOR:L:Mtremor}
CONFIGURE_ARGS +=	--with-tremor \
			--disable-oggflac \
			--disable-shout \
			--disable-vorbis-encoder \
			--disable-lame-encoder \
			--disable-aac \
			--disable-mpc
LIB_DEPENDS +=		vorbisidec::audio/tremor
.else
WANTLIB +=		theora
LIB_DEPENDS +=		vorbis,vorbisfile,vorbisenc::audio/libvorbis \
			speex::audio/speex \
			mp3lame::audio/lame \
			shout::net/libshout \
			faad,mp4ff:faad->=2.6.1p0:audio/faad \
			mpcdec::audio/libmpcdec
CONFIGURE_ARGS +=	--enable-aac
.endif

USE_LIBTOOL =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mpd
	${INSTALL_DATA} ${WRKSRC}/doc/mpdconf.example \
		${PREFIX}/share/examples/mpd/mpd.conf

.include <bsd.port.mk>
