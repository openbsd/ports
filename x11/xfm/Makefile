# OpenBSD makefile for:	xfm
# Version required:	1.3.2
# Date created:		May 18 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 1998/06/13 23:27:14 marc Exp $
#

DISTNAME=	xfm-1.3.2
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	applications

OS_RELEASE!=	uname -r
OS_HAS_XPM=	2.3
.if ( ${OS_RELEASE} < ${OS_HAS_XPM} )
LIB_DEPENDS=	Xpm\\.4\\.:${PORTSDIR}/graphics/xpm
.endif

USE_IMAKE=	yes

.include <bsd.port.mk>
