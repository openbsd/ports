# $OpenBSD: Makefile,v 1.8 2000/10/05 16:10:25 ian Exp $

PKGNAME=	zap-1.1
DISTNAME=	zap-1.1
WRKDIST=	${WRKDIR}/zap
CATEGORIES=	sysutils
NEED_VERSION=	1.191
MASTER_SITES=	http://www.darwinsys.com/freeware/

MAINTAINER=	Ian Darwin <ian@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=			Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/zap ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/zap.cat1 ${PREFIX}/man/cat1/zap.0

.include <bsd.port.mk>
