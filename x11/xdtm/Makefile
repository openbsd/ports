# $OpenBSD: Makefile,v 1.24 2010/07/30 06:59:01 ajacoutot Exp $

COMMENT=		Desktop Manager: a graphical shell for X11

DISTNAME=		xdtm-2.5.8
REVISION=		0
CATEGORIES=		x11

MASTER_SITES=		${MASTER_SITE_XCONTRIB:=applications/}

# BSD-like, badly worded
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xt c m

USE_X11=		Yes
CONFIGURE_STYLE=	imake
WRKDIST=		${WRKDIR}/xdtm

NO_REGRESS=		Yes

.include <bsd.port.mk>
