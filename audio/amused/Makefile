COMMENT =	minimalistic music player

V =		0.2
DISTNAME =	amused-$V

CATEGORIES =	audio

HOMEPAGE =	https://git.omarpolo.com/amused/about

MAINTAINER =	Omar Polo <op@omarpolo.com>

# ISC
PERMIT_PACKAGE = Yes

# uses pledge
WANTLIB += FLAC c event m mpg123 opusfile sndio util vorbisfile

MASTER_SITES =	https://github.com/omar-polo/amused/releases/download/$V/

LIB_DEPENDS =	audio/flac \
		audio/libvorbis \
		audio/mpg123 \
		audio/opusfile

MAKE_FLAGS =	CC=${CC}

FAKE_FLAGS =	BINDIR=${PREFIX}/bin \
		MANDIR=${PREFIX}/man/man

NO_TEST =	Yes

.include <bsd.port.mk>
