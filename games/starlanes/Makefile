# $OpenBSD: Makefile,v 1.4 2000/02/11 01:10:02 espie Exp $

DISTNAME=	starlanes-1.2.2
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= games/strategy

MAINTAINER=	angelos@openbsd.org

ALL_TARGET=

pre-build:
	@rm ${WRKSRC}/starlanes

do-install:
	@mkdir -p ${PREFIX}/share/doc/starlanes
	${INSTALL_PROGRAM} ${WRKSRC}/starlanes ${PREFIX}/bin/starlanes
	${INSTALL_MAN} ${WRKSRC}/starlanes.6 ${PREFIX}/man/man6
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/starlanes/COPYING
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/starlanes/README

.include <bsd.port.mk>
