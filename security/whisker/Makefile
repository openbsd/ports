# $OpenBSD: Makefile,v 1.11 2002/10/28 17:35:02 naddy Exp $

COMMENT=	"stealthy webserver vulnerability scanner"

DISTNAME=	whisker
PKGNAME=	whisker-1.4
CATEGORIES=	security

MASTER_SITES=	http://www.wiretrip.net/rfp/bins/whisker/

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WRKDIST=	${WRKDIR}/v1.4

do-build:
	@cd ${WRKSRC}; sed -e  s#!!PREFIX!!#${PREFIX}#g whisker.pl > whisker

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/whisker
	${INSTALL_DATA_DIR} ${PREFIX}/share/whisker/lists
	${INSTALL_SCRIPT} ${WRKSRC}/whisker ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/listgen.pl ${PREFIX}/bin/whisker-listgen
	${INSTALL_SCRIPT} ${WRKSRC}/multi.pl ${PREFIX}/bin/whisker-multi
	${INSTALL_DATA} ${WRKSRC}/*.db ${PREFIX}/share/whisker
	${INSTALL_DATA} ${WRKSRC}/lists/* ${PREFIX}/share/whisker/lists
	${INSTALL_DATA} ${WRKSRC}/whisker.txt ${PREFIX}/share/doc/whisker

.include <bsd.port.mk>
