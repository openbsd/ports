# $OpenBSD: Makefile,v 1.8 2007/05/27 14:17:02 steven Exp $

COMMENT=	"simple port scan detector"

DISTNAME=	courtney-1.3
CATEGORIES=	net security
MASTER_SITES=	${MASTER_SITE_PACKETSTORM:=UNIX/audit/}
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	Brian Caswell <bmc@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/courtney
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/courtney
	${INSTALL_SCRIPT} ${WRKSRC}/courtney.pl ${PREFIX}/sbin/courtney

.include <bsd.port.mk>
