# $OpenBSD: Makefile,v 1.16 2019/07/12 21:02:26 sthen Exp $

COMMENT=	RADIUS log file analysis tool

DISTNAME=	radiusreport-0.3b6
REVISION =	0
CATEGORIES=	sysutils
MASTER_SITES=	http://www.pgregg.com/projects/radiusreport/
EXTRACT_SUFX=	.tar

HOMEPAGE=	http://www.pgregg.com/projects/radiusreport/

PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/radiusreport-0.3b6 \
		${PREFIX}/bin/radiusreport
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/radiusreport
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/examples/radiusreport

.include <bsd.port.mk>
