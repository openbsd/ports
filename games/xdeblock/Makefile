# OpenBSD makefile for:   xdeblock
# Version required:    v1.0
# Date created:        May 19 1998
# Whom:                Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/20 02:26:45 angelos Exp $
#

DISTNAME=	xdeblo_v1.0
PKGNAME=	xdeblock-1.0
CATEGORIES=	games
MASTER_SITES=	ftp://www.vector.co.jp/pack/unix/game/action/block/
DISTFILES=	xdeblock.tgz

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	Xpm\\.4\\.:${PORTSDIR}/graphics/xpm

USE_IMAKE=	yes
NO_INSTALL_MANPAGES=	yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xdeblo ${PREFIX}/bin
	${MKDIR} ${PREFIX}/lib/X11/xdeblock/mapf
	chmod 777 ${PREFIX}/lib/X11/xdeblock/mapf
	${INSTALL_DATA} ${WRKSRC}/mapf/*.txt ${PREFIX}/lib/X11/xdeblock/mapf

.include <bsd.port.mk>
