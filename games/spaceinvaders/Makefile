# $OpenBSD: Makefile,v 1.1.1.1 2017/05/19 17:35:53 mglocker Exp $

COMMENT =		display-based version of the Space Invaders game
DISTNAME =		spaceinvaders-0.4
CATEGORIES =		games
REVISION =		0
HOMEPAGE =		http://www.nazgul.ch/dev_spaceinvaders.html
MAINTAINER =		Marcus Glocker <marcus@nazgul.ch>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB = 		c curses
MASTER_SITES = 		http://www.nazgul.ch/dev/
NO_TEST =		Yes
CFLAGS +=		-Wall -Wstrict-prototypes

do-build:
	${CC} ${CFLAGS} -o ${WRKSRC}/spaceinvaders ${WRKSRC}/spaceinvaders.c \
	    -lcurses

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/spaceinvaders ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/spaceinvaders.6 ${PREFIX}/man/man6
	${INSTALL_DATA_DIR} ${PREFIX}/share/spaceinvaders
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/spaceinvaders
	${INSTALL_DATA} ${WRKSRC}/ChangeLog ${PREFIX}/share/spaceinvaders

.include <bsd.port.mk>
