# $OpenBSD: Makefile,v 1.26 2009/08/10 06:31:43 kili Exp $

COMMENT=	block action game

DISTNAME=	xdeblock
PKGNAME=	xdeblock-1.0p1
CATEGORIES=	games

MASTER_SITES=	http://www.vector.co.jp/pack/unix/game/action/block/
EXTRACT_SUFX=	.tgz

# License: NONE
PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_CDROM=	no license
PERMIT_DISTFILES_FTP=	no license

WANTLIB=	X11 Xau Xdmcp Xext Xpm c pthread-stubs xcb

CONFIGURE_STYLE=	imake noman
WRKDIST=		${WRKDIR}/xdeblo_v1.0

USE_X11=	Yes
NO_REGRESS=	Yes

pre-configure:
	perl -pi -e 's|/usr/X11R6|${X11BASE}|g' ${WRKSRC}/Imakefile ${WRKSRC}/main.c

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/xdeblock/mapf
	${INSTALL_PROGRAM} ${WRKSRC}/xdeblo ${PREFIX}/bin
	@${CHMOD} 777 ${PREFIX}/lib/X11/xdeblock/mapf
	${INSTALL_DATA} ${WRKSRC}/mapf/*.txt ${PREFIX}/lib/X11/xdeblock/mapf

.include <bsd.port.mk>
