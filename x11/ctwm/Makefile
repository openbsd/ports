# OpenBSD makefile for:	ctwm
# Version required:	3.4
# Date created:		11 January 1998
# Whom:			Don Schmidt
#
# $OpenBSD: Makefile,v 1.2 1998/06/13 23:27:07 marc Exp $
#

DISTNAME=	ctwm-3.5
CATEGORIES=	x11
MASTER_SITES=	ftp://slhp1.epfl.ch/pub/

MAINTAINER=	don@OpenBSD.ORG

OS_RELEASE!=	uname -r
OS_HAS_XPM=	2.3
.if ( ${OS_RELEASE} < ${OS_HAS_XPM} )
LIB_DEPENDS=	Xpm\\.4\\.:${PORTSDIR}/graphics/xpm
.endif

USE_IMAKE=	yes

.include <bsd.port.mk>
