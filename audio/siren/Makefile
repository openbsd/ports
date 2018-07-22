# $OpenBSD: Makefile,v 1.9 2018/07/22 13:59:59 gonzalo Exp $

COMMENT =		text-based audio player
DISTNAME =		siren-0.7
REVISION =		0
CATEGORIES =		audio
HOMEPAGE =		https://www.kariliq.nl/siren/
MAINTAINER =		Alexandre Ratchov <alex@caoua.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}/dist/

# uses pledge()
WANTLIB +=		FLAC c curses faad mp4v2 mpg123 opusfile pthread sndfile
WANTLIB +=		sndio vorbisfile wavpack

LIB_DEPENDS =		audio/faad \
			audio/flac \
			audio/libid3tag \
			audio/mpg123 \
			audio/libsndfile \
			audio/libvorbis \
			audio/opusfile \
			audio/wavpack \
			multimedia/libmp4v2

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	prefix=${PREFIX} \
			ao=no \
			ffmpeg=no \
			mad=no \
			mpg123=yes \
			oss=no \
			portaudio=no \
			pulse=no \
			sun=no
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST =		Yes

.include <bsd.port.mk>
