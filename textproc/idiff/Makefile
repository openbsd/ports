# $OpenBSD: Makefile,v 1.18 2011/06/23 22:50:29 naddy Exp $
#

COMMENT=	powerful command-line front end to diff

DISTNAME=	idiff-1.0
REVISION=	0
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
