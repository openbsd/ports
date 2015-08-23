# $OpenBSD: Makefile,v 1.16 2015/08/23 04:38:23 semarie Exp $

COMMENT=	proxy IRC client with ICB server

DISTNAME=	icbirc-2.0
CATEGORIES=	net
MASTER_SITES=	http://www.benzedrine.ch/

HOMEPAGE=	http://www.benzedrine.ch/icbirc.html

MAINTAINER=	Sebastien Marie <semarie@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/icbirc ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/icbirc.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
