# $OpenBSD: Makefile,v 1.12 2007/09/15 21:14:02 merdely Exp $

COMMENT=	RADIUS log file analysis tool

DISTNAME=	radiusreport-0.3b6
CATEGORIES=	sysutils
MASTER_SITES=	http://www.pgregg.com/projects/radiusreport/
EXTRACT_SUFX=	.tar

HOMEPAGE=	http://www.pgregg.com/projects/radiusreport/

MAINTAINER=	Dan Harnett <danh@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/radiusreport-0.3b6 \
		${PREFIX}/bin/radiusreport
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/radiusreport
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/examples/radiusreport

.include <bsd.port.mk>
