# $OpenBSD: Makefile,v 1.11 2002/03/06 19:47:03 ian Exp $

COMMENT=	"interactive process killer"

PKGNAME=	zap-1.3
DISTNAME=	zap-1.3
WRKDIST=	${WRKDIR}/zap
CATEGORIES=	sysutils
NEED_VERSION=	1.402
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
