# OpenBSD makefile for:	xminehunter
# Version required:	0.4
# Date created:		May 19 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/20 01:58:18 angelos Exp $
#

DISTNAME=	xminehunter-0.4
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	games

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	Xpm\\.4\\.:${PORTSDIR}/graphics/xpm

USE_X11=	yes
WRKSRC=		${WRKDIR}/xminehunter
REQUIRES_MOTIF=	yes
ALL_TARGET=	xminehunter

.include <bsd.port.mk>
