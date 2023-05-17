COMMENT =	minimalistic music player

DISTNAME =	amused-0.12

CATEGORIES =	audio

HOMEPAGE =	https://projects.omarpolo.com/amused.html

MAINTAINER =	Omar Polo <op@openbsd.org>

# ISC
PERMIT_PACKAGE = Yes

# uses pledge
WANTLIB += FLAC c event mpg123 opusfile sndio util vorbisfile

MASTER_SITES =	https://ftp.omarpolo.com/

LIB_DEPENDS =	audio/flac \
		audio/libvorbis \
		audio/mpg123 \
		audio/opusfile

CONFIGURE_STYLE = simple
CONFIGURE_ARGS = --backend=sndio

NO_TEST =	Yes

.include <bsd.port.mk>
