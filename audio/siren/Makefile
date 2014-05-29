# $OpenBSD: Makefile,v 1.3 2014/05/29 11:40:07 ratchov Exp $

# installs and requires its own shared object modules
SHARED_ONLY =		Yes

COMMENT =		text-based audio player
DISTNAME =		siren-0.3.1
REVISION =		0
CATEGORIES =		audio
HOMEPAGE =		http://www.kariliq.nl/siren/
MAINTAINER =		Alexandre Ratchov <alex@caoua.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}/dist/

WANTLIB +=		c curses m pthread sndio z
WANTLIB +=		FLAC id3tag mad sndfile vorbisfile wavpack

LIB_DEPENDS =		audio/flac \
			audio/libid3tag \
			audio/libmad \
			audio/libsndfile \
			audio/libvorbis \
			audio/wavpack

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	prefix=${PREFIX} \
			ao=no \
			oss=no \
			pulse=no \
			sun=no

NO_TEST =		Yes

.include <bsd.port.mk>
