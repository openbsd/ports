# OpenBSD makefile for:			starlanes
# Version required:			1.2.2
# Date created:				May 19 1998
# Whom:					Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/20 03:30:05 angelos Exp $
#

DISTNAME=		starlanes-1.2.2
CATEGORIES=		games
MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	games/strategy

MAINTAINER=		angelos@openbsd.org

ALL_TARGET=
MAN6=			starlanes.6

pre-build:
	@ ${RM} ${WRKSRC}/starlanes

do-install:
	@ ${INSTALL_PROGRAM} ${WRKSRC}/starlanes ${PREFIX}/bin/starlanes
	@ ${INSTALL_MAN} ${WRKSRC}/starlanes.6 ${PREFIX}/man/man6
	@ ${MKDIR} ${PREFIX}/share/doc/starlanes
	@ ${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/starlanes/COPYING
	@ ${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/starlanes/README

.include <bsd.port.mk>
