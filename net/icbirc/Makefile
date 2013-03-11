# $OpenBSD: Makefile,v 1.13 2013/03/11 11:35:47 espie Exp $

COMMENT=	proxy IRC client with ICB server

DISTNAME=	icbirc-1.8
REVISION=	0
CATEGORIES=	net
MASTER_SITES=	http://www.benzedrine.cx/

HOMEPAGE=	http://www.benzedrine.cx/icbirc.html

MAINTAINER=	Daniel Hartmeier <dhartmei@openbsd.org>

WRKDIST=	${WRKDIR}/icbirc

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

USE_GROFF =	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/icbirc ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/icbirc.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
