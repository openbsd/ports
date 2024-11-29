COMMENT =	simple off-line blog utility

DISTNAME =	sblg-0.6.1
CATEGORIES =	www

HOMEPAGE =	https://kristaps.bsd.lv/sblg/

MAINTAINER =	Bryan Vyhmeister <bryan@bsdjournal.net>

# ISC
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB += c expat

SITES =			${HOMEPAGE}snapshots/

MAKE_FLAGS =		CC="${CC}"

CONFIGURE_STYLE =	simple

TEST_TARGET = 		regress
TEST_DEPENDS =		textproc/jq

ALL_TARGET =		sblg

.include <bsd.port.mk>
