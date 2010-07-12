# $OpenBSD: Makefile,v 1.3 2010/07/12 22:07:39 sthen Exp $

COMMENT=	netword traffic redirector

DISTNAME=	netfwd-0.4
REVISION=	0
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
	${INSTALL_MAN} ${WRKSRC}/netfwd.cat1 ${PREFIX}/man/cat1/netfwd.0

.include <bsd.port.mk>
