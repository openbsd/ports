COMMENT=	Rogue like adventure game

DISTNAME=	wanderer-3.2
REVISION=	5

CATEGORIES=	games

HOMEPAGE=	http://www.e271.net/~marina/wanderer.html

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=	c curses

SITES=		http://www.e271.net/~marina/

NO_TEST=	Yes

pre-patch:
	@rm ${WRKSRC}/Makefile.orig

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wanderer
	${INSTALL_DATA} /dev/null \
		${PREFIX}/share/examples/wanderer/wandererscores
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/wanderer
	chown ${MANOWN}:${MANGRP} ${PREFIX}/man/man6/wanderer.6

.include <bsd.port.mk>
