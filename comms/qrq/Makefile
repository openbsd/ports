COMMENT =	high speed Morse code telegraphy trainer

DISTNAME =	qrq-0.3.5

CATEGORIES =	comms hamradio

HOMEPAGE =	https://fkurz.net/ham/qrq.html

MAINTAINER =	Enzo Nicosia <me@katolaz.net>

SITES =		https://fkurz.net/ham/qrq/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += c curses m pthread pulse pulse-simple

LIB_DEPENDS +=	audio/pulseaudio

USE_GMAKE =	Yes

MAKE_FLAGS =	DESTDIR="${PREFIX}" \
		CC="${CC}" \
		CPPFLAGS="-I${LOCALBASE}/include"
FAKE_FLAGS =	DESTDIR="${WRKINST}${PREFIX}"
MAKE_ENV =	LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST =	Yes

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
