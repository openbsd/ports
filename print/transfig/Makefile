# OpenBSD makefile for:	transfig
# Version required:	3.2
# Date created:		December 2, 1997
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.3 1998/06/13 23:27:02 marc Exp $
#

DISTNAME=	transfig.3.2
PKGNAME=	transfig-3.2
CATEGORIES=	print
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	applications/drawing_tools/transfig

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	jpeg\\.62\\.:${PORTSDIR}/graphics/jpeg
OS_RELEASE!=	uname -r
OS_HAS_XPM=	2.3
.if ( ${OS_RELEASE} < ${OS_HAS_XPM} )
LIB_DEPENDS+=	Xpm\\.4\\.:${PORTSDIR}/graphics/xpm
.endif

RUN_DEPENDS=	gs:${PORTSDIR}/print/ghostscript5

USE_IMAKE=	yes

.include <bsd.port.mk>
