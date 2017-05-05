# $OpenBSD: Makefile,v 1.27 2017/05/05 22:11:08 naddy Exp $

COMMENT=	twm with a virtual desktop

DISTNAME=	tvtwm.pl11
PKGNAME=	tvtwm-0pl11
REVISION=	1
CATEGORIES=	x11

# BSD-like/badly worded
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE SM X11 Xext Xmu Xpm Xt c Xau Xdmcp

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=window_managers/}

WRKDIST=	${WRKDIR}/tvtwm

CONFIGURE_STYLE=	imake

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tvtwm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tvtwm.man ${PREFIX}/man/man1/tvtwm.1

.include <bsd.port.mk>
