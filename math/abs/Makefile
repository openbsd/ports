# $OpenBSD: Makefile,v 1.1.1.1 2000/12/28 13:55:13 kevlo Exp $

DISTNAME=	abs-src-0.8
PKGNAME=	abs-0.8
CATEGORIES=	math
NEED_VERSION=	1.348

HOMEPAGE=	http://www.ping.be/bertin/abs.shtml

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://www.ping.be/bertin/

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/abs
	${INSTALL_PROGRAM} ${WRKSRC}/abs ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/Examples/* ${PREFIX}/share/examples/abs

.include <bsd.port.mk>
