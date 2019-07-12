# $OpenBSD: Makefile,v 1.17 2019/07/12 20:47:37 sthen Exp $

COMMENT=	spam relay database

DISTNAME=	relaydb-1.7
REVISION=	2
CATEGORIES=	mail
MASTER_SITES=	http://www.benzedrine.ch/

HOMEPAGE=	http://www.benzedrine.ch/relaydb.html

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		c

MAKE_FLAGS=	CC="${CC}"

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/relaydb ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/relaydb.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
