# $OpenBSD: Makefile,v 1.7 2013/03/11 11:35:49 espie Exp $

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

EXTRACT_SUFX=	.tar.gz

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/netfwd ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/netfwd.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
