# $OpenBSD: Makefile,v 1.12 2014/03/13 10:22:52 sthen Exp $

COMMENT=	NetBIOS name network scanner

DISTNAME=	nbtscan-1.5.1
REVISION=	0
WRKDIST=	${WRKDIR}/${DISTNAME}a

CATEGORIES=	net

MASTER_SITES=	http://www.inetcat.net/software/

HOMEPAGE=	http://www.inetcat.net/software/nbtscan.html

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

NO_TEST=	Yes
CONFIGURE_STYLE= gnu
ALL_TARGET=	nbtscan

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nbtscan ${PREFIX}/bin

.include <bsd.port.mk>
