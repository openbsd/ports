# $OpenBSD: Makefile,v 1.11 2000/04/04 10:49:20 kevlo Exp $

DISTNAME=	xdeblock
PKGNAME=	xdeblock-1.0
CATEGORIES=	games
NEED_VERSION=	1.191
MASTER_SITES=	ftp://www.vector.co.jp/pack/unix/game/action/block/
EXTRACT_SUFX=	.tgz


MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_IMAKE=		Yes
WRKDIST=		${WRKDIR}/xdeblo_v1.0
NO_INSTALL_MANPAGES=	Yes
FAKE=			Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/xdeblock/mapf
	${INSTALL_PROGRAM} ${WRKSRC}/xdeblo ${PREFIX}/bin
	@${CHMOD} 777 ${PREFIX}/lib/X11/xdeblock/mapf
	${INSTALL_DATA} ${WRKSRC}/mapf/*.txt ${PREFIX}/lib/X11/xdeblock/mapf

.include <bsd.port.mk>
