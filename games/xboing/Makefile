# OpenBSD makefile for:	xboing
# Version required:	2.3
# Date created:		May 19 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 1998/06/13 23:26:45 marc Exp $

DISTNAME=	xboing2.3
PKGNAME=	xboing-2.3
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	games
EXTRACT_SUFX=	.tar.gz

MAINTAINER=	angelos@openbsd.org

OS_RELEASE!=	uname -r
OS_HAS_XPM=	2.3
.if ( ${OS_RELEASE} < ${OS_HAS_XPM} )
LIB_DEPENDS+=	Xpm\\.4\\.:${PORTSDIR}/graphics/xpm
.endif

USE_IMAKE=	yes
WRKSRC= ${WRKDIR}/xboing

.include <bsd.port.mk>
