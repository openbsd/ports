# $OpenBSD: Makefile,v 1.2 2001/04/12 15:59:15 bmc Exp $

COMMENT=	"simple port scan detector"

DISTNAME=	courtney-1.3
CATEGORIES=	net security
NEED_VERSION=	1.394
MASTER_SITES=	ftp://ciac.llnl.gov/pub/ciac/sectools/unix/courtney/ \
		http://packetstorm.securify.com/UNIX/audit/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	Brian Caswell <bmc@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/courtney
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/courtney
	${INSTALL_SCRIPT} ${WRKSRC}/courtney.pl ${PREFIX}/sbin/courtney

.include <bsd.port.mk>
