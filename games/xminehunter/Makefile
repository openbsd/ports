# OpenBSD makefile for:	xminehunter
# Version required:	0.4
# Date created:		May 19 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 1998/06/13 23:26:48 marc Exp $
#

DISTNAME=	xminehunter-0.4
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	games

MAINTAINER=	angelos@openbsd.org

OS_RELEASE!=	uname -r
OS_HAS_XPM=	2.3
.if ( ${OS_RELEASE} < ${OS_HAS_XPM} )
LIB_DEPENDS=	Xpm\\.4\\.:${PORTSDIR}/graphics/xpm
.endif

USE_X11=	yes
WRKSRC=		${WRKDIR}/xminehunter
REQUIRES_MOTIF=	yes
ALL_TARGET=	xminehunter

.include <bsd.port.mk>
