# $OpenBSD: Makefile,v 1.4 2003/04/05 23:43:59 margarida Exp $

COMMENT=	"NetBIOS name network scanner"

DISTNAME=	nbtscan-1.5
CATEGORIES=	net
MASTER_SITES=	http://www.inetcat.org/software/

HOMEPAGE=	http://www.inetcat.org/software/nbtscan.html

MAINTAINER=	Jolan Luff <jolan@cryptonomicon.org>

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
