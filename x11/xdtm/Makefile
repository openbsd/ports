# OpenBSD makefile for: 	        xdtm
# Version required:     		2.5.5
# Date created:         		May 19 1998
# Whom:                 		Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 1998/06/13 23:27:11 marc Exp $
#

DISTNAME=		xdtm-2.5.5
CATEGORIES=		x11
MASTER_SITES=		${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	applications/xdtm

MAINTAINER=		angelos@openbsd.org

OS_RELEASE!=		uname -r
OS_HAS_XPM=		2.3
.if ( ${OS_RELEASE} < ${OS_HAS_XPM} )
LIB_DEPENDS=		Xpm\\.4\\.:${PORTSDIR}/graphics/xpm
.endif

USE_IMAKE=		yes
WRKSRC=			${WRKDIR}/xdtm

.include <bsd.port.mk>
