# $OpenBSD: Makefile,v 1.6 2003/09/25 06:25:13 jolan Exp $

COMMENT=	"NetBIOS name network scanner"

DISTNAME=	nbtscan-1.5
CATEGORIES=	net
MASTER_SITES=	http://www.inetcat.org/software/

HOMEPAGE=	http://www.inetcat.org/software/nbtscan.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes

CONFIGURE_STYLE=gnu

ALL_TARGET=	nbtscan

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nbtscan ${PREFIX}/bin

.include <bsd.port.mk>
