# $OpenBSD: Makefile,v 1.5 2019/07/12 20:50:01 sthen Exp $

COMMENT =	command-line based markdown presentation tool

GH_ACCOUNT =	visit1985
GH_PROJECT =	mdp
GH_TAGNAME =	1.0.12

CATEGORIES =	textproc

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB +=	c curses

MAKE_FLAGS =		PREFIX=${PREFIX}

USE_GMAKE =		Yes

NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mdp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/mdp.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
