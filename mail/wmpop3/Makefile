# $OpenBSD: Makefile,v 1.1.1.1 2001/02/14 15:45:19 wilfried Exp $

DISTNAME=	WMPop3-0.5.6a
PKGNAME=	${DISTNAME:L}
CATEGORIES=	mail x11/windowmaker
NEED_VERSION=	1.340
HOMEPAGE=	http://www.cs.mun.ca/~scotth/
MASTER_SITES=	${HOMEPAGE}download/

MAINTAINER=	Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
WRKDIST=	${WRKDIR}/${PKGNAME}
WRKBUILD=	${WRKDIST}/wmpop3

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wmpop3/wmpop3 ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wmpop3
	${INSTALL_DATA} ${WRKSRC}/wmpop3/wmpop3rc ${PREFIX}/share/examples/wmpop3
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wmpop3
	${INSTALL_DATA} ${WRKDIR}/${PKGNAME}/README ${PREFIX}/share/doc/wmpop3

.include <bsd.port.mk>
