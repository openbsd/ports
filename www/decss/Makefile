# $OpenBSD: Makefile,v 1.1.1.1 2000/02/29 10:30:47 kevlo Exp $

DISTNAME=	decss
PKGNAME=	decss-0.0.5
CATEGORIES=	www

MASTER_SITES=   http://www.totse.com/DeCSS/

MAINTAINER=     kevlo@openbsd.org

LICENSE_TYPE=           PERL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WRKSRC=         ${WRKDIR}/source

NO_BUILD=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/DeCSS
	${INSTALL_SCRIPT} ${WRKSRC}/DeCSS ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/DeCSS
.include <bsd.port.mk>
