# $OpenBSD: Makefile,v 1.9 2007/09/15 22:36:55 merdely Exp $

COMMENT=	NetBIOS name network scanner

DISTNAME=	nbtscan-1.5
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net
MASTER_SITES=	http://www.inetcat.net/software/

HOMEPAGE=	http://www.inetcat.net/software/nbtscan.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

NO_REGRESS=	Yes

CONFIGURE_STYLE=gnu

ALL_TARGET=	nbtscan

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nbtscan ${PREFIX}/bin

.include <bsd.port.mk>
