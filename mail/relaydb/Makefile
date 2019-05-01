# $OpenBSD: Makefile,v 1.16 2019/05/01 19:29:43 sthen Exp $

COMMENT=	spam relay database

DISTNAME=	relaydb-1.7
REVISION=	2
CATEGORIES=	mail
MASTER_SITES=	http://www.benzedrine.ch/

HOMEPAGE=	http://www.benzedrine.ch/relaydb.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MAKE_FLAGS=	CC="${CC}"

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/relaydb ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/relaydb.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
