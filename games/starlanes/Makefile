# $OpenBSD: Makefile,v 1.2 1998/11/09 01:49:56 marc Exp $
#

DISTNAME=		starlanes-1.2.2
CATEGORIES=		games

MAINTAINER=		angelos@openbsd.org

MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	games/strategy

ALL_TARGET=

pre-build:
	@ ${RM} ${WRKSRC}/starlanes

do-install:
	@ ${INSTALL_PROGRAM} ${WRKSRC}/starlanes ${PREFIX}/bin/starlanes
	@ ${INSTALL_MAN} ${WRKSRC}/starlanes.6 ${PREFIX}/man/man6
	@ ${MKDIR} ${PREFIX}/share/doc/starlanes
	@ ${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/starlanes/COPYING
	@ ${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/starlanes/README

.include <bsd.port.mk>
