# $OpenBSD: Makefile,v 1.5 2015/09/20 12:47:58 ratchov Exp $

# installs and requires its own shared object modules
SHARED_ONLY =		Yes

COMMENT =		text-based audio player
DISTNAME =		siren-0.6
CATEGORIES =		audio
HOMEPAGE =		http://www.kariliq.nl/siren/
MAINTAINER =		Alexandre Ratchov <alex@caoua.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}/dist/

WANTLIB +=		c curses m pthread sndio z
WANTLIB +=		FLAC faad id3tag mad mp4v2 opusfile sndfile vorbisfile
WANTLIB +=		wavpack

LIB_DEPENDS =		audio/faad \
			audio/flac \
			audio/libid3tag \
			audio/libmad \
			audio/libsndfile \
			audio/libvorbis \
			audio/opusfile \
			audio/wavpack \
			multimedia/libmp4v2

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	prefix=${PREFIX} \
			ao=no \
			oss=no \
			portaudio=no \
			pulse=no \
			sun=no
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST =		Yes

.include <bsd.port.mk>
