COMMENT =	free clone of The New York Times game Spelling Bee
DISTNAME =	freebee-2.0
CATEGORIES =	games

HOMEPAGE =	https://freebee.fun
MAINTAINER =	Tracey Emery <tracey@openbsd.org>

# ISC
PERMIT_PACKAGE = Yes

# uses pledge()
# uses unveil()
WANTLIB +=	c curl curses

MASTER_SITES =	https://github.com/freebee-game/console-client/releases/download/${DISTNAME}/

LIB_DEPENDS =	net/curl

NO_TEST =	Yes

.include <bsd.port.mk>
