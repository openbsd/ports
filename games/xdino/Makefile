# OpenBSD makefile for:   xdino
# Version required:    5.4.1
# Date created:        May 19 1998
# Whom:                Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/20 02:21:38 angelos Exp $
#

DISTNAME=        xdino-5.4.1
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	games/xpuzzles

MAINTAINER=	angelos@openbsd.org

WRKSRC=		${WRKDIR}/xdino
USE_IMAKE=	yes
MAN1=		xdino.1

post-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/xdino ${PREFIX}/bin
	@${INSTALL_DATA} ${WRKSRC}/Dino.ad ${PREFIX}/lib/X11/app-defaults/Dino
	@${INSTALL_MAN} ${WRKSRC}/xdino.man ${PREFIX}/man/man1/xdino.1

.include <bsd.port.mk>
