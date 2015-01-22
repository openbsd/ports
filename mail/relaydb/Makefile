# $OpenBSD: Makefile,v 1.14 2015/01/22 21:17:46 naddy Exp $

COMMENT=	spam relay database

DISTNAME=	relaydb-1.7
REVISION=	1
CATEGORIES=	mail
MASTER_SITES=	http://www.benzedrine.ch/

HOMEPAGE=	http://www.benzedrine.ch/relaydb.html

MAINTAINER=	Daniel Hartmeier <dhartmei@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/relaydb ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/relaydb.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
