# $OpenBSD: Makefile,v 1.6 2001/03/28 19:35:33 danh Exp $

COMMENT=	"RADIUS log file analysis tool"

DISTNAME=	radiusreport-0.3b6
CATEGORIES=	sysutils
NEED_VERSION=	1.364
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
