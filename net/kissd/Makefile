# $OpenBSD: Makefile,v 1.4 2007/09/15 22:36:54 merdely Exp $

COMMENT=	server for KiSS DP-500 network movie player

DISTNAME=	kissd-0.3
CATEGORIES=	net
MASTER_SITES=	http://www.benzedrine.cx/

HOMEPAGE=	http://www.benzedrine.cx/kissd.html

MAINTAINER=	Daniel Hartmeier <dhartmei@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/kissd ${PREFIX}/bin/kissd
	${INSTALL_MAN} ${WRKSRC}/kissd.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
