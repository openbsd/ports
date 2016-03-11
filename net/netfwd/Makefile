# $OpenBSD: Makefile,v 1.8 2016/03/11 21:27:48 mmcc Exp $

COMMENT=	netword traffic redirector

DISTNAME=	netfwd-0.4
REVISION=	1
CATEGORIES=	net

MAINTAINER=	Alexey Vatchenko <av@bsdua.org>

HOMEPAGE=	http://www.bsdua.org/netfwd.html

# ISC
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

MASTER_SITES=	http://www.bsdua.org/files/

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/netfwd ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/netfwd.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
