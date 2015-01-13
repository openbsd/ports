# $OpenBSD: Makefile,v 1.14 2015/01/13 11:26:10 sthen Exp $

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

USE_GROFF =	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/icbirc ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/icbirc.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
