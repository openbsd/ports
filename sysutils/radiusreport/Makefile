# $OpenBSD: Makefile,v 1.3 2000/08/10 05:52:14 danh Exp $

DISTNAME=	radiusreport-0.3b6
EXTRACT_SUFX=	.tar
CATEGORIES=	sysutils
HOMEPAGE=	http://www.tibus.net/pgregg/projects/radiusreport/

MAINTAINER=	danh@openbsd.org

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}

NO_BUILD=	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/radiusreport-0.3b6 \
		${PREFIX}/bin/radiusreport
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/radiusreport
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/examples/radiusreport

.include <bsd.port.mk>
