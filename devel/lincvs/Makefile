# $OpenBSD: Makefile,v 1.1.1.1 2000/12/10 13:15:23 reinhard Exp $

DISTNAME=	lincvs_0.2.3
PKGNAME=	lincvs-0.2.3
CATEGORIES=	devel
NEED_VERSION=	1.340
MASTER_SITES=	http://ppprs1.phy.tu-dresden.de/~trogisch/lincvs/download/

HOMEPAGE=	http://ppprs1.phy.tu-dresden.de/~trogisch/lincvs/lincvsen.html

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

USE_X11=                Yes

LIB_DEPENDS=	qt.2.::x11/qt2 

WRKDIST=	${WRKDIR}/LinCVS-0.2.3

do-install:
		@mv ${WRKSRC}/LinCVS ${WRKSRC}/lincvs
		${INSTALL_DATA} -m 0755 -g 0 ${WRKSRC}/lincvs ${PREFIX}/bin
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lincvs
		${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/lincvs
		${INSTALL_DATA} ${WRKSRC}/INSTALL.TXT ${PREFIX}/share/doc/lincvs
		${INSTALL_DATA} ${WRKSRC}/README.TXT ${PREFIX}/share/doc/lincvs
		${INSTALL_DATA} ${WRKSRC}/VERSION.TXT ${PREFIX}/share/doc/lincvs

.include <bsd.port.mk>
