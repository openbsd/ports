COMMENT =	convert ebooks to CW (Morse code)

DISTNAME =	ebook2cw-0.8.5

CATEGORIES =	comms hamradio

HOMEPAGE =	https://fkurz.net/ham/ebook2cw.html

MAINTAINER =	Enzo Nicosia <me@katolaz.net>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += c m mp3lame ogg vorbis vorbisenc intl

SITES =		https://fkurz.net/ham/ebook2cw/

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =	audio/lame \
		audio/libvorbis \
		audio/libogg \
		devel/gettext,-runtime

USE_GMAKE =	Yes
MAKE_FLAGS =	DESTDIR=${PREFIX}
FAKE_FLAGS =	DESTDIR=${WRKINST}${PREFIX}
NO_TEST =	yes
DEBUG_PACKAGES = ${BUILD_PACKAGES}

.include <bsd.port.mk>
