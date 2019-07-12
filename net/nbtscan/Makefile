# $OpenBSD: Makefile,v 1.14 2019/07/12 20:48:33 sthen Exp $

COMMENT=	NetBIOS name network scanner

DISTNAME=	nbtscan_1.5.1
PKGNAME=	${DISTNAME:S/_/-/}
REVISION=	1
WRKDIST=	${WRKDIR}/${PKGNAME}a

CATEGORIES=	net

MASTER_SITES=	http://www.inetcat.org/software/

HOMEPAGE=	http://www.inetcat.org/software/nbtscan.html

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c

NO_TEST=	Yes
CONFIGURE_STYLE= gnu
ALL_TARGET=	nbtscan

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nbtscan ${PREFIX}/bin

.include <bsd.port.mk>
