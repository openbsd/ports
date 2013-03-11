# $OpenBSD: Makefile,v 1.23 2013/03/11 11:35:58 espie Exp $

COMMENT=	X11 front-end program for the archie network search service

DISTNAME=	xarchie-2.0.10
REVISION=	2
CATEGORIES=	net

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=applications/}

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c pthread-stubs xcb

CONFIGURE_STYLE=imake
USE_GROFF =	Yes
NO_TEST=	Yes

.include <bsd.port.mk>
