# $OpenBSD: Makefile,v 1.20 2013/03/11 11:42:42 espie Exp $
#

COMMENT=	powerful command-line front end to diff

DISTNAME=	idiff-1.0
REVISION=	1
CATEGORIES=	textproc
MASTER_SITES=	http://www.darwinsys.com/freeware/

MAINTAINER=	Ian Darwin <ian@openbsd.org>

# BSD-like, badly worded
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/idiff ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/idiff.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
