# $OpenBSD: Makefile,v 1.5 2000/02/12 06:29:52 turan Exp $
#

DISTNAME=        xdino-5.4.4
CATEGORIES=	games

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	games/xpuzzles
NEED_VERSION=	1.191

WRKDIST=	${WRKDIR}/xdino
USE_IMAKE=	yes

post-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/xdino ${PREFIX}/bin
	@${INSTALL_DATA} ${WRKSRC}/Dino.ad ${PREFIX}/lib/X11/app-defaults/Dino
	@${INSTALL_MAN} ${WRKSRC}/xdino.man ${PREFIX}/man/man1/xdino.1

.include <bsd.port.mk>
