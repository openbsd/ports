# $OpenBSD: Makefile,v 1.13 2001/10/28 13:05:46 espie Exp $
#

COMMENT=	"dino puzzle game for X11"

DISTNAME=	xdino-5.5.2
CATEGORIES=	games
NEED_VERSION=	1.402

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	games/xpuzzles

WRKDIST=	${WRKDIR}/xdino
CONFIGURE_STYLE=	imake	

post-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/xdino ${PREFIX}/bin
	@${INSTALL_DATA} ${WRKSRC}/Dino.ad ${PREFIX}/lib/X11/app-defaults/Dino
	@${INSTALL_MAN} ${WRKSRC}/xdino.man ${PREFIX}/man/man1/xdino.1

.include <bsd.port.mk>
