# $OpenBSD: Makefile,v 1.11 2013/03/11 11:35:49 espie Exp $

COMMENT=	NetBIOS name network scanner

DISTNAME=	nbtscan-1.5.1
CATEGORIES=	net
MASTER_SITES=	http://www.inetcat.net/software/

HOMEPAGE=	http://www.inetcat.net/software/nbtscan.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

WRKDIST=	${WRKDIR}/${DISTNAME}a

NO_TEST=	Yes

CONFIGURE_STYLE=gnu

ALL_TARGET=	nbtscan

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nbtscan ${PREFIX}/bin

.include <bsd.port.mk>
