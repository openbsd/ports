# $OpenBSD: Makefile,v 1.15 2001/06/20 01:43:20 pvalchev Exp $

COMMENT=	"block action game"

DISTNAME=	xdeblock
PKGNAME=	xdeblock-1.0
CATEGORIES=	games
NEED_VERSION=	1.402
MASTER_SITES=	ftp://www.vector.co.jp/pack/unix/game/action/block/
EXTRACT_SUFX=	.tgz


MAINTAINER=	ports@openbsd.org

# License: NONE
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	imake noman
WRKDIST=		${WRKDIR}/xdeblo_v1.0

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/xdeblock/mapf
	${INSTALL_PROGRAM} ${WRKSRC}/xdeblo ${PREFIX}/bin
	@${CHMOD} 777 ${PREFIX}/lib/X11/xdeblock/mapf
	${INSTALL_DATA} ${WRKSRC}/mapf/*.txt ${PREFIX}/lib/X11/xdeblock/mapf

.include <bsd.port.mk>
