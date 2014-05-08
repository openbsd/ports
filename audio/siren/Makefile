# $OpenBSD: Makefile,v 1.2 2014/05/08 10:15:31 ratchov Exp $

# installs and requires its own shared object modules
SHARED_ONLY =		Yes

COMMENT =		text-based audio player
DISTNAME =		siren-0.3.1
CATEGORIES =		audio
HOMEPAGE =		http://www.kariliq.nl/siren/
MAINTAINER =		Alexandre Ratchov <alex@caoua.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}/dist/

WANTLIB +=		c curses m pthread sndio z
WANTLIB +=		FLAC id3tag mad sndfile vorbisfile

LIB_DEPENDS =		audio/flac \
			audio/libid3tag \
			audio/libmad \
			audio/libsndfile \
			audio/libvorbis

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	prefix=${PREFIX} \
			ao=no \
			oss=no \
			pulse=no \
			sun=no \
			wavpack=no

NO_TEST =		Yes

.include <bsd.port.mk>
