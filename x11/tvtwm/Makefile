# $FreeBSD: ports/x11-wm/tvtwm/Makefile,v 1.17 1999/08/31 06:53:15 mharo Exp $
# $OpenBSD: Makefile,v 1.19 2007/09/15 20:04:25 merdely Exp $

COMMENT=	twm with a virtual desktop

DISTNAME=	tvtwm.pl11
PKGNAME=	tvtwm-0pl11
CATEGORIES=	x11

# BSD-like/badly worded
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xmu Xpm Xt c

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=window_managers/}

WRKDIST=	${WRKDIR}/tvtwm

USE_X11=	Yes

CONFIGURE_STYLE=	imake

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tvtwm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tvtwm.man ${PREFIX}/man/man1/tvtwm.1

.include <bsd.port.mk>
