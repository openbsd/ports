# OpenBSD makefile for:	xfig
# Version required:	3.2
# Date created:		December 2, 1997
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.3 1998/06/13 23:26:57 marc Exp $
#

DISTNAME=	xfig.3.2
PKGNAME=	xfig-3.2
CATEGORIES=	graphics x11
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	applications/drawing_tools/xfig

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	jpeg\\.62\\.:${PORTSDIR}/graphics/jpeg \
		Xaw3d\\.6\\.:${PORTSDIR}/x11/Xaw3d
OS_RELEASE!=	uname -r
OS_HAS_XPM=	2.3
.if ( ${OS_RELEASE} < ${OS_HAS_XPM} )
LIB_DEPENDS+=	Xpm\\.4\\.:${PORTSDIR}/graphics/xpm
.endif
RUN_DEPENDS=	fig2dev:${PORTSDIR}/print/transfig

USE_IMAKE=	yes
MAKE_FLAGS=	BINDIR=${PREFIX}/bin MANDIR=${PREFIX}/man/man1 \
		XAPPLOADDIR=${PREFIX}/lib/X11/app-defaults  \
		XFIGLIBDIR=${PREFIX}/lib/X11/xfig  -f

.include <bsd.port.mk>
