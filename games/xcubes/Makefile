# $OpenBSD: Makefile,v 1.24 2010/10/24 21:19:03 ajacoutot Exp $
#

COMMENT=	cube puzzle for X11

DISTNAME=	xcubes-5.5.2
PKGNAME=	${DISTNAME}p2
CATEGORIES=	games

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xt c pthread-stubs xcb

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=games/xpuzzles/}

WRKDIST=	${WRKDIR}/xcubes
CONFIGURE_STYLE=imake
USE_GROFF =	Yes
NO_REGRESS=	Yes

post-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/xcubes ${PREFIX}/bin
	@${INSTALL_DATA} ${WRKSRC}/Cubes.ad ${PREFIX}/lib/X11/app-defaults/Cubes
	@${INSTALL_MAN} ${WRKSRC}/xcubes.man ${PREFIX}/man/man1/xcubes.1

.include <bsd.port.mk>
