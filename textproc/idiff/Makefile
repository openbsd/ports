# $OpenBSD: Makefile,v 1.15 2007/09/15 20:59:38 merdely Exp $
#

COMMENT=	powerful command-line front end to diff

PKGNAME=	idiff-1.0
DISTNAME=	idiff-1.0
CATEGORIES=	textproc
MASTER_SITES=	http://www.darwinsys.com/freeware/

MAINTAINER=	Ian Darwin <ian@openbsd.org>

# BSD-like, badly worded
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/idiff ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/idiff.cat1 ${PREFIX}/man/cat1/idiff.0

.include <bsd.port.mk>
