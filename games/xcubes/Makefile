# $OpenBSD: Makefile,v 1.26 2013/03/11 11:07:41 espie Exp $
#

COMMENT=	cube puzzle for X11

DISTNAME=	xcubes-5.5.2
REVISION =	2
CATEGORIES=	games

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xt c pthread-stubs xcb

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=games/xpuzzles/}

WRKDIST=	${WRKDIR}/xcubes
CONFIGURE_STYLE=imake
USE_GROFF =	Yes
NO_TEST=	Yes

post-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/xcubes ${PREFIX}/bin
	@${INSTALL_DATA} ${WRKSRC}/Cubes.ad ${PREFIX}/lib/X11/app-defaults/Cubes
	@${INSTALL_MAN} ${WRKSRC}/xcubes.man ${PREFIX}/man/man1/xcubes.1

.include <bsd.port.mk>
