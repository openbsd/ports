# $OpenBSD: Makefile,v 1.5 2000/02/12 06:30:04 turan Exp $
#

PKGNAME=	idiff-1.0
DISTNAME=	idiff-1.0
CATEGORIES=	textproc
MASTER_SITES=	http://www.darwinsys.com/freeware/

MAINTAINER=	ian@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/idiff ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/idiff.cat1 ${PREFIX}/man/cat1/idiff.0

.include <bsd.port.mk>
