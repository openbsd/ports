# $OpenBSD: Makefile,v 1.7 2000/03/30 15:39:23 kevlo Exp $
#

PKGNAME=	zap-1.1
DISTNAME=	zap-1.1
WRKDIST=	${WRKDIR}/zap
CATEGORIES=	sysutils
NEED_VERSION=	1.191
MASTER_SITES=	http://www.darwinsys.com/freeware/

MAINTAINER=	ian@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=			Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/zap ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/zap.cat1 ${PREFIX}/man/cat1/zap.0

.include <bsd.port.mk>
