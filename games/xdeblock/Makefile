# $OpenBSD: Makefile,v 1.3 1998/11/09 01:49:58 marc Exp $
#

DISTNAME=	xdeblo_v1.0
PKGNAME=	xdeblock-1.0
CATEGORIES=	games

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	ftp://www.vector.co.jp/pack/unix/game/action/block/
DISTFILES=	xdeblock.tgz

USE_IMAKE=	yes
NO_INSTALL_MANPAGES=	yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xdeblo ${PREFIX}/bin
	${MKDIR} ${PREFIX}/lib/X11/xdeblock/mapf
	chmod 777 ${PREFIX}/lib/X11/xdeblock/mapf
	${INSTALL_DATA} ${WRKSRC}/mapf/*.txt ${PREFIX}/lib/X11/xdeblock/mapf

.include <bsd.port.mk>
