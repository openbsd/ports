# $OpenBSD: Makefile,v 1.22 2019/07/12 20:49:59 sthen Exp $
#

COMMENT=	interactive front end to diff

DISTNAME=	idiff-1.1
CATEGORIES=	textproc
MASTER_SITES=	http://www.darwinsys.com/freeware/

CATEGORIES =	textproc

MAINTAINER=	Ian Darwin <ian@openbsd.org>

# BSD-like
PERMIT_PACKAGE=	Yes

WANTLIB=		c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/idiff ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/idiff.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
