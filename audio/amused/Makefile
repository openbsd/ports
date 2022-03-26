COMMENT =	minimalistic music player

DISTNAME =	amused-0.5

CATEGORIES =	audio

HOMEPAGE =	https://projects.omarpolo.com/amused.html

MAINTAINER =	Omar Polo <op@omarpolo.com>

# ISC
PERMIT_PACKAGE = Yes

# uses pledge
WANTLIB += FLAC c event m mpg123 opusfile sndio util vorbisfile

MASTER_SITES =	https://ftp.omarpolo.com/

LIB_DEPENDS =	audio/flac \
		audio/libvorbis \
		audio/mpg123 \
		audio/opusfile

MAKE_FLAGS =	CC=${CC}

FAKE_FLAGS =	BINDIR=${PREFIX}/bin \
		MANDIR=${PREFIX}/man/man

NO_TEST =	Yes

.include <bsd.port.mk>
