# $OpenBSD: Makefile,v 1.4 2000/02/11 00:37:24 espie Exp $
#

DISTNAME=	xcubes-5.4.4
CATEGORIES=	games

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	games/xpuzzles
NEED_VERSION=	1.191

WRKDIST=	${WRKDIR}/xcubes
USE_IMAKE=	yes

post-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/xcubes ${PREFIX}/bin
	@${INSTALL_DATA} ${WRKSRC}/Cubes.ad ${PREFIX}/lib/X11/app-defaults/Cubes
	@${INSTALL_MAN} ${WRKSRC}/xcubes.man ${PREFIX}/man/man1/xcubes.1

.include <bsd.port.mk>
