# $OpenBSD: Makefile,v 1.22 2010/10/18 18:00:19 espie Exp $
#

COMMENT=	dino puzzle game for X11

DISTNAME=	xdino-5.5.2
PKGNAME=	${DISTNAME}p1
CATEGORIES=	games

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xt c pthread-stubs xcb

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=games/xpuzzles/}

WRKDIST=	${WRKDIR}/xdino
CONFIGURE_STYLE=	imake	

USE_X11=	Yes
USE_GROFF =	Yes
NO_REGRESS=	Yes

post-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/xdino ${PREFIX}/bin
	@${INSTALL_DATA} ${WRKSRC}/Dino.ad ${PREFIX}/lib/X11/app-defaults/Dino
	@${INSTALL_MAN} ${WRKSRC}/xdino.man ${PREFIX}/man/man1/xdino.1

.include <bsd.port.mk>
