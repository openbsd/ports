# $OpenBSD: Makefile,v 1.5 2000/02/11 00:37:24 espie Exp $

DISTNAME=	xdeblock
PKGNAME=	xdeblock-1.0
CATEGORIES=	games
MASTER_SITES=	ftp://www.vector.co.jp/pack/unix/game/action/block/
EXTRACT_SUFX=	.tgz
NEED_VERSION=	1.191

NEED_VERSION=	1.114

MAINTAINER=	angelos@openbsd.org

USE_IMAKE=	yes
WRKDIST=	${WRKDIR}/xdeblo_v1.0
NO_INSTALL_MANPAGES=	yes

do-install:
	@${MKDIR} ${PREFIX}/lib/X11/xdeblock/mapf
	${INSTALL_PROGRAM} ${WRKSRC}/xdeblo ${PREFIX}/bin
	@${CHMOD} 777 ${PREFIX}/lib/X11/xdeblock/mapf
	${INSTALL_DATA} ${WRKSRC}/mapf/*.txt ${PREFIX}/lib/X11/xdeblock/mapf

.include <bsd.port.mk>
