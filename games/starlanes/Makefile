# $OpenBSD: Makefile,v 1.24 2014/07/14 10:03:33 kirby Exp $

COMMENT=	classic space-age stock trading game

DISTNAME=	starlanes-1.2.2
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SUNSITE:=games/strategy/}

# GPLv2
PERMIT_PACKAGE_CDROM=	YES
WANTLIB=		c curses

MAKE_FLAGS=	CC="${CC}"
ALL_TARGET=

NO_TEST=	Yes

pre-build:
	@rm ${WRKSRC}/starlanes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/starlanes
	${INSTALL_PROGRAM} ${WRKSRC}/starlanes ${PREFIX}/bin/starlanes
	${INSTALL_MAN} ${WRKSRC}/starlanes.6 ${PREFIX}/man/man6
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/starlanes/COPYING
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/starlanes/README

.include <bsd.port.mk>
