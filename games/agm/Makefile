# OpenBSD makefile for:			agm
# Version required:			1.1
# Date created:				May 19 1998
# Whom:					Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/20 01:09:31 angelos Exp $
#

DISTNAME=		agm-1.1
CATEGORIES=		games
MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	games/amusements

MAINTAINER=		angelos@openbsd.org

WRKSRC=			${WRKDIR}
MAN6=			agm.6

do-install:
	@ ${INSTALL_PROGRAM} ${WRKSRC}/agm ${PREFIX}/bin
	@ ${INSTALL_MAN} ${WRKSRC}/agm.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
