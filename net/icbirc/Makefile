# $OpenBSD: Makefile,v 1.15 2015/01/22 21:17:47 naddy Exp $

COMMENT=	proxy IRC client with ICB server

DISTNAME=	icbirc-1.8
REVISION=	1
CATEGORIES=	net
MASTER_SITES=	http://www.benzedrine.ch/

HOMEPAGE=	http://www.benzedrine.ch/icbirc.html

MAINTAINER=	Daniel Hartmeier <dhartmei@openbsd.org>

WRKDIST=	${WRKDIR}/icbirc

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/icbirc ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/icbirc.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
