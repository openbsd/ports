# $OpenBSD: Makefile,v 1.12 2003/01/31 05:11:57 margarida Exp $

COMMENT=	"stealthy webserver vulnerability scanner"

DISTNAME=	whisker-2.1
CATEGORIES=	security

HOMEPAGE=	http://www.wiretrip.net/

MASTER_SITES=	http://www.wiretrip.net/rfp/bins/whisker/

MAINTAINER=	Srebrenko Sehic <haver@insecure.dk>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

NO_REGRESS=	Yes
NO_BUILD=	Yes

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
