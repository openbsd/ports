# $OpenBSD: Makefile,v 1.30 2013/10/11 20:40:04 naddy Exp $

COMMENT=		Desktop Manager: a graphical shell for X11

DISTNAME=		xdtm-2.5.8
REVISION=		2
CATEGORIES=		x11

MASTER_SITES=		${MASTER_SITE_XCONTRIB:=applications/}

# BSD-like, badly worded
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xt c m

USE_GROFF =		Yes
CONFIGURE_STYLE=	imake
WRKDIST=		${WRKDIR}/xdtm

NO_TEST=		Yes

.include <bsd.port.mk>
