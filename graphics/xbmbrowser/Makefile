# New ports collection makefile for:	xbmbrowser
# Version required:	xbmbrowser5.1
# Date created:		05 May 1998
# Whom:			Oleg Safiullin <form@vs.itam.nsc.ru>
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/05 14:56:23 form Exp $
# FreeBSD: Makefile,v 1.3 1997/08/26 07:12:20 tg Exp 
#

DISTNAME=	xbmbrowser5.1
PKGNAME=	xbmbrowser-5.1
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	utilities

MAINTAINER=	form@vs.itam.nsc.ru

OS_RELEASE!=	uname -r
OS_NO_XPM=	2.2
.if ( ${OS_RELEASE} <= ${OS_NO_XPM} )
LIB_DEPENDS=	Xpm\\.4\\.:${PORTSDIR}/graphics/xpm
.endif

USE_IMAKE=	yes
USE_GMAKE=	yes

.include <bsd.port.mk>
