# $OpenBSD: Makefile,v 1.7 2000/08/07 04:34:05 obecian Exp $

DISTNAME=	whisker
PKGNAME=	whisker-1.4
CATEGORIES=	security
NEED_VERSION=	1.310
MASTER_SITES=	http://www.wiretrip.net/rfp/bins/whisker/

MAINTAINER=	dugsong@monkey.org

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WRKDIST=	${WRKDIR}/v1.4

do-build:
	@cd ${WRKSRC}; sed -e  s#!!PREFIX!!#${PREFIX}#g whisker.pl > whisker

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
