# OpenBSD makefile for:    xpaint
# Version required:     2.4.8
# Date created:         December 2, 1997
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.6 1998/06/14 08:10:38 marc Exp $
#

DISTNAME=       xpaint-2.5.4
CATEGORIES=	graphics x11
MASTER_SITES=	http://www.danbbs.dk/~torsten/xpaint/

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=    jpeg\\.62\\.:${PORTSDIR}/graphics/jpeg \
		tiff\\.3\\.4:${PORTSDIR}/graphics/tiff34 \
		png\\.1\\.:${PORTSDIR}/graphics/png
OS_RELEASE!=	uname -r
OS_HAS_XPM=	2.3
.if ( ${OS_RELEASE} < ${OS_HAS_XPM} )
LIB_DEPENDS+=	Xpm\\.4\\.:${PORTSDIR}/graphics/xpm
.endif

WRKSRC=		${WRKDIR}/xpaint
USE_IMAKE=      yes

.include <bsd.port.mk>
