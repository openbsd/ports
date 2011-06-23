# $OpenBSD: Makefile,v 1.6 2011/06/23 22:50:28 naddy Exp $

COMMENT=	netword traffic redirector

DISTNAME=	netfwd-0.4
REVISION=	1
CATEGORIES=	net

MAINTAINER=	Alexey Vatchenko <av@bsdua.org>

HOMEPAGE=	http://www.bsdua.org/netfwd.html

# ISC
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c

MASTER_SITES=	http://www.bsdua.org/files/

EXTRACT_SUFX=	.tar.gz

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/netfwd ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/netfwd.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
