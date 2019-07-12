# $OpenBSD: Makefile,v 1.45 2019/07/12 20:43:34 sthen Exp $

COMMENT =		low latency sound server

V =			0.125.0
DISTNAME =		jack-audio-connection-kit-${V}
PKGNAME =		jack-${V}
CATEGORIES =		audio
REVISION =		2

SHARED_LIBS +=		jack		2.0	# 0.28
SHARED_LIBS +=		jackserver	2.0	# 0.28

HOMEPAGE =		http://jackaudio.org/

# LGPLv2/GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += FLAC c celt0>=1 curses db m ogg pthread readline samplerate
WANTLIB += sndfile sndio vorbis vorbisenc

MASTER_SITES =		${HOMEPAGE}downloads/

LIB_DEPENDS =		audio/libsndfile \
			audio/libsamplerate \
			audio/celt>=0.11.0 \
			databases/db/v4

LIBTOOL_FLAGS +=	--tag=disable-static

AUTOCONF_VERSION =	2.65
AUTOMAKE_VERSION =	1.10
CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS +=	--with-default-tmpdir=/var/tmp \
			--disable-sun \
			--disable-portaudio \
			--disable-optimize

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/db4" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			HAVE_DOXYGEN="false"

.ifdef DEBUG
CONFIGURE_ARGS +=	--enable-debug
.endif

.include <bsd.port.mk>
