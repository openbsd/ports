# OpenBSD makefile for:   xcubes
# Version required:    V5.4.1
# Date created:        May 19 1998
# Whom:                Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/20 01:07:21 angelos Exp $
#

DISTNAME=	xcubes-5.4.1
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	games/xpuzzles

MAINTAINER=	angelos@openbsd.org

WRKSRC=		${WRKDIR}/xcubes
USE_IMAKE=	yes
MAN1=		xcubes.1

post-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/xcubes ${PREFIX}/bin
	@${INSTALL_DATA} ${WRKSRC}/Cubes.ad ${PREFIX}/lib/X11/app-defaults/Cubes
	@${INSTALL_MAN} ${WRKSRC}/xcubes.man ${PREFIX}/man/man1/xcubes.1

.include <bsd.port.mk>
