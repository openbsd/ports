# $OpenBSD: Makefile,v 1.3 1999/01/14 02:26:27 angelos Exp $
#

DISTNAME=	xcubes-5.4.4
CATEGORIES=	games

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	games/xpuzzles

WRKSRC=		${WRKDIR}/xcubes
USE_IMAKE=	yes

post-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/xcubes ${PREFIX}/bin
	@${INSTALL_DATA} ${WRKSRC}/Cubes.ad ${PREFIX}/lib/X11/app-defaults/Cubes
	@${INSTALL_MAN} ${WRKSRC}/xcubes.man ${PREFIX}/man/man1/xcubes.1

.include <bsd.port.mk>
