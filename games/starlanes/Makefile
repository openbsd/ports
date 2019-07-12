# $OpenBSD: Makefile,v 1.26 2019/07/12 21:15:35 sthen Exp $

COMMENT=	classic space-age stock trading game

DISTNAME=	starlanes-1.2.2
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SUNSITE:=games/strategy/}

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=		c curses

MAKE_FLAGS=	CC="${CC}"
ALL_TARGET=

NO_TEST=	Yes

post-extract:
	@rm -f ${WRKSRC}/starlanes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/starlanes
	${INSTALL_PROGRAM} ${WRKSRC}/starlanes ${PREFIX}/bin/starlanes
	${INSTALL_MAN} ${WRKSRC}/starlanes.6 ${PREFIX}/man/man6
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/starlanes/COPYING
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/starlanes/README

.include <bsd.port.mk>
