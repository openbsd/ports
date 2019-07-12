# $OpenBSD: Makefile,v 1.29 2019/07/12 20:51:23 sthen Exp $

COMMENT=	twm with a virtual desktop

DISTNAME=	tvtwm.pl11
PKGNAME=	tvtwm-0pl11
REVISION=	2
CATEGORIES=	x11

# BSD-like/badly worded
PERMIT_PACKAGE=	Yes

WANTLIB=		ICE SM X11 Xext Xmu Xpm Xt c Xau Xdmcp

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=window_managers/}

WRKDIST=	${WRKDIR}/tvtwm

CONFIGURE_STYLE=	imake

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tvtwm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tvtwm.man ${PREFIX}/man/man1/tvtwm.1

.include <bsd.port.mk>
