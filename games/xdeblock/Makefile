# $OpenBSD: Makefile,v 1.14 2001/05/06 01:06:24 lebel Exp $

COMMENT=	"block action game"

DISTNAME=	xdeblock
PKGNAME=	xdeblock-1.0
CATEGORIES=	games
NEED_VERSION=	1.402
MASTER_SITES=	ftp://www.vector.co.jp/pack/unix/game/action/block/
EXTRACT_SUFX=	.tgz


MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		NONE
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
