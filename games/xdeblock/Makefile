# $OpenBSD: Makefile,v 1.21 2004/11/28 22:41:25 espie Exp $

COMMENT=	"block action game"

DISTNAME=	xdeblock
PKGNAME=	xdeblock-1.0
CATEGORIES=	games

MASTER_SITES=	http://www.vector.co.jp/pack/unix/game/action/block/
EXTRACT_SUFX=	.tgz

# License: NONE
PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"
WANTLIB=		X11 Xext Xpm c

CONFIGURE_STYLE=	imake noman
WRKDIST=		${WRKDIR}/xdeblo_v1.0

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/xdeblock/mapf
	${INSTALL_PROGRAM} ${WRKSRC}/xdeblo ${PREFIX}/bin
	@${CHMOD} 777 ${PREFIX}/lib/X11/xdeblock/mapf
	${INSTALL_DATA} ${WRKSRC}/mapf/*.txt ${PREFIX}/lib/X11/xdeblock/mapf

.include <bsd.port.mk>
