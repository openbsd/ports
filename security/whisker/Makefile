# $OpenBSD: Makefile,v 1.15 2007/09/15 23:30:01 merdely Exp $

COMMENT=	stealthy webserver vulnerability scanner

DISTNAME=	whisker-2.1
CATEGORIES=	security

HOMEPAGE=	http://www.wiretrip.net/

MASTER_SITES=	http://www.wiretrip.net/rfp/bins/whisker/

MAINTAINER=	Srebrenko Sehic <haver@insecure.dk>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

NO_REGRESS=	Yes
NO_BUILD=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/whisker
	${INSTALL_DATA_DIR} ${PREFIX}/share/whisker
	${INSTALL_SCRIPT} ${WRKSRC}/whisker.pl ${PREFIX}/bin/whisker
	${INSTALL_DATA} ${WRKSRC}/LW.pm ${PREFIX}/share/whisker
	${INSTALL_DATA} ${WRKSRC}/newbie.help ${PREFIX}/share/doc/whisker
	${INSTALL_DATA} ${WRKSRC}/main.test ${PREFIX}/share/doc/whisker
	${INSTALL_DATA} ${WRKSRC}/html.plugin ${PREFIX}/share/doc/whisker
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/whisker
	${INSTALL_DATA} ${WRKSRC}/docs/*.txt ${PREFIX}/share/doc/whisker

.include <bsd.port.mk>
