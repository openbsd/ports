# $OpenBSD: Makefile,v 1.15 2013/03/11 11:41:32 espie Exp $

COMMENT=	RADIUS log file analysis tool

DISTNAME=	radiusreport-0.3b6
REVISION =	0
CATEGORIES=	sysutils
MASTER_SITES=	http://www.pgregg.com/projects/radiusreport/
EXTRACT_SUFX=	.tar

HOMEPAGE=	http://www.pgregg.com/projects/radiusreport/

PERMIT_PACKAGE_CDROM=   Yes

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/radiusreport-0.3b6 \
		${PREFIX}/bin/radiusreport
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/radiusreport
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/examples/radiusreport

.include <bsd.port.mk>
