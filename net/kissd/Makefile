# $OpenBSD: Makefile,v 1.10 2019/07/12 20:48:29 sthen Exp $

COMMENT=	server for KiSS DP-500 network movie player

DISTNAME=	kissd-0.3
CATEGORIES=	net
MASTER_SITES=	http://www.benzedrine.ch/
REVISION=	1

HOMEPAGE=	http://www.benzedrine.ch/kissd.html

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		c

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/kissd ${PREFIX}/bin/kissd
	${INSTALL_MAN} ${WRKSRC}/kissd.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
