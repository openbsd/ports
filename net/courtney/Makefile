# $OpenBSD: Makefile,v 1.1.1.1 2001/01/12 04:27:46 danh Exp $

DISTNAME=	courtney-1.3
CATEGORIES=	net security
NEED_VERSION=	1.351
MASTER_SITES=	ftp://ciac.llnl.gov/pub/ciac/sectools/unix/courtney/ \
		http://packetstorm.securify.com/UNIX/audit/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	Brian Caswell <bmc@mitre.org>

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
