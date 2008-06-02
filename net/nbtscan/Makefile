# $OpenBSD: Makefile,v 1.10 2008/06/02 17:02:44 sthen Exp $

COMMENT=	NetBIOS name network scanner

DISTNAME=	nbtscan-1.5.1
CATEGORIES=	net
MASTER_SITES=	http://www.inetcat.net/software/

HOMEPAGE=	http://www.inetcat.net/software/nbtscan.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

WRKDIST=	${WRKDIR}/${DISTNAME}a

NO_REGRESS=	Yes

CONFIGURE_STYLE=gnu

ALL_TARGET=	nbtscan

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nbtscan ${PREFIX}/bin

.include <bsd.port.mk>
