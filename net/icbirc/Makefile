COMMENT =	proxy IRC client with ICB server

DISTNAME =	icbirc-2.2
CATEGORIES =	net
SITES =		https://www.benzedrine.ch/

HOMEPAGE =	https://www.benzedrine.ch/icbirc.html

MAINTAINER =	Sebastien Marie <semarie@kapouay.eu.org>

# BSD
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB +=	c

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/icbirc ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/icbirc.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
