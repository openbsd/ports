# $OpenBSD: Makefile,v 1.1.1.1 2011/06/21 19:14:59 jasper Exp $

COMMENT=		Bus Pirate binary mode SPI sniffer

# svn rev 598
DISTNAME=		spisniffer-0.2
CATEGORIES=		comms devel

HOMEPAGE=		http://dangerousprototypes.com/docs/Bus_Pirate_binary_SPI_sniffer_utility

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# CC0 1.0 Universal (CC0 1.0)  (Public Domain)
# http://creativecommons.org/publicdomain/zero/1.0/
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://distfiles.nl/

WANTLIB=		c

MAKE_FLAGS=		CC="${CC}" STD_CFLAGS="${CFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/spisniffer ${PREFIX}/bin/

.include <bsd.port.mk>
