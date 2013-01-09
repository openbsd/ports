# $OpenBSD: Makefile,v 1.19 2013/01/09 23:24:09 sthen Exp $
#

COMMENT=	powerful command-line front end to diff

DISTNAME=	idiff-1.0
REVISION=	1
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
	${INSTALL_MAN} ${WRKSRC}/idiff.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
