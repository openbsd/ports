# $OpenBSD: Makefile,v 1.2 2000/03/23 06:51:17 turan Exp $
#

PKGNAME=	spiff-1.0
DISTNAME=	spiff-1.0
CATEGORIES=	textproc
MASTER_SITES=	http://www.darwinsys.com/freeware/

MAINTAINER=	ian@openbsd.org

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

MAN1=spiff.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/spiff ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/spiff.0 ${PREFIX}/man/man1

.include <bsd.port.mk>
