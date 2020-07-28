# $OpenBSD: Makefile,v 1.1.1.1 2020/07/28 13:48:46 tracey Exp $

COMMENT =	free clone of The New York Times game Spelling Bee
DISTNAME =	freebee-1.6
CATEGORIES =	games

HOMEPAGE =	https://freebee.fun
MAINTAINER =	Tracey Emery <tracey@openbsd.org>

# ISC
PERMIT_PACKAGE = Yes

# uses pledge()
# uses unveil()
WANTLIB +=	c curl curses

MASTER_SITES =	https://github.com/freebee-game/console-client/releases/download/${DISTNAME}/

EXTRACT_SUFX =	.tar.xz

LIB_DEPENDS =	net/curl

NO_TEST =	Yes

.include <bsd.port.mk>
