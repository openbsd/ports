# $OpenBSD: Makefile,v 1.6 2000/03/24 22:12:01 espie Exp $
#

PKGNAME=	zap-1.1
DISTNAME=	zap-1.1
WRKDIST=	${WRKDIR}/zap
CATEGORIES=	sysutils
NEED_VERSION=	1.191
MASTER_SITES=	http://www.darwinsys.com/freeware/

MAINTAINER=	ian@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/zap ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/zap.cat1 ${PREFIX}/man/cat1/zap.0

.include <bsd.port.mk>
