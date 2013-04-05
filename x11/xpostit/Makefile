# $OpenBSD: Makefile,v 1.26 2013/04/05 17:29:50 naddy Exp $

COMMENT=	PostIt (R) messages onto your X11 screen

DISTNAME=	xpostit3.3.1
PKGNAME=	xpostit-3.3.1
REVISION=	1
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_R5CONTRIB}
EXTRACT_SUFX=	.tar.Z

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xpm Xt c

USE_GROFF =	Yes
CONFIGURE_STYLE=	imake
WRKDIST=	${WRKDIR}/xpostit

NO_TEST=	Yes

.include <bsd.port.mk>
