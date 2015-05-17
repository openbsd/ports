# $OpenBSD: Makefile,v 1.11 2015/05/17 11:42:17 sthen Exp $

COMMENT=	simple port scan detector

DISTNAME=	courtney-1.3
REVISION=	0
CATEGORIES=	net security
MASTER_SITES=	${MASTER_SITE_PACKETSTORM:=UNIX/audit/}
EXTRACT_SUFX=	.tar.Z

PERMIT_PACKAGE_CDROM=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/courtney
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/courtney
	${INSTALL_SCRIPT} ${WRKSRC}/courtney.pl ${PREFIX}/sbin/courtney

.include <bsd.port.mk>
