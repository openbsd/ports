# $OpenBSD: Makefile,v 1.12 2002/03/21 21:25:53 espie Exp $

COMMENT=	"interactive process killer"

PKGNAME=	zap-1.3
DISTNAME=	zap-1.3
WRKDIST=	${WRKDIR}/zap
CATEGORIES=	sysutils
NEED_VERSION=	1.515
MASTER_SITES=	http://www.darwinsys.com/freeware/

MAINTAINER=	Ian Darwin <ian@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/zap ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/zap.cat1 ${PREFIX}/man/cat1/zap.0

.include <bsd.port.mk>
