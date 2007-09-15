# $OpenBSD: Makefile,v 1.9 2007/09/15 22:36:53 merdely Exp $

COMMENT=	proxy IRC client with ICB server

DISTNAME=	icbirc-1.8
CATEGORIES=	net
MASTER_SITES=	http://www.benzedrine.cx/

HOMEPAGE=	http://www.benzedrine.cx/icbirc.html

MAINTAINER=	Daniel Hartmeier <dhartmei@openbsd.org>

WRKDIST=	${WRKDIR}/icbirc

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/icbirc ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/icbirc.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
