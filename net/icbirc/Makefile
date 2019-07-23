# $OpenBSD: Makefile,v 1.23 2019/07/23 09:58:42 sthen Exp $

COMMENT=	proxy IRC client with ICB server

DISTNAME=	icbirc-2.1
REVISION=	3
CATEGORIES=	net
MASTER_SITES=	http://www.benzedrine.ch/

HOMEPAGE=	http://www.benzedrine.ch/icbirc.html

# BSD
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB=		c

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/icbirc ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/icbirc.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
