# $OpenBSD: Makefile,v 1.5 2000/09/23 19:59:55 danh Exp $

DISTNAME=	radiusreport-0.3b6
CATEGORIES=	sysutils
NEED_VERSION=	1.334
MASTER_SITES=	http://www.tibus.net/pgregg/projects/radiusreport/
EXTRACT_SUFX=	.tar

HOMEPAGE=	http://www.tibus.net/pgregg/projects/radiusreport/

MAINTAINER=	Dan Harnett <danh@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

NO_BUILD=	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/radiusreport-0.3b6 \
		${PREFIX}/bin/radiusreport
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/radiusreport
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/examples/radiusreport

.include <bsd.port.mk>
