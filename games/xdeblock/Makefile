# $OpenBSD: Makefile,v 1.9 2000/03/24 22:11:43 espie Exp $

DISTNAME=	xdeblock
PKGNAME=	xdeblock-1.0
CATEGORIES=	games
NEED_VERSION=	1.191
MASTER_SITES=	ftp://www.vector.co.jp/pack/unix/game/action/block/
EXTRACT_SUFX=	.tgz


MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

USE_IMAKE=	yes
WRKDIST=	${WRKDIR}/xdeblo_v1.0
NO_INSTALL_MANPAGES=	yes

do-install:
	@mkdir -p ${PREFIX}/lib/X11/xdeblock/mapf
	${INSTALL_PROGRAM} ${WRKSRC}/xdeblo ${PREFIX}/bin
	@${CHMOD} 777 ${PREFIX}/lib/X11/xdeblock/mapf
	${INSTALL_DATA} ${WRKSRC}/mapf/*.txt ${PREFIX}/lib/X11/xdeblock/mapf

.include <bsd.port.mk>
