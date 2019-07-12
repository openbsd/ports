# $OpenBSD: Makefile,v 1.5 2019/07/12 20:43:48 sthen Exp $

COMMENT=		Bus Pirate binary mode SPI sniffer

# svn rev 598
DISTNAME=		spisniffer-0.3
CATEGORIES=		comms devel

HOMEPAGE=		http://dangerousprototypes.com/docs/Bus_Pirate_binary_SPI_sniffer_utility

# CC0 1.0 Universal (CC0 1.0)  (Public Domain)
# http://creativecommons.org/publicdomain/zero/1.0/
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://distfiles.nl/

WANTLIB=		c

NO_TEST=		Yes

MAKE_FLAGS=		CC="${CC}" STD_CFLAGS="${CFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/spisniffer ${PREFIX}/bin/

.include <bsd.port.mk>
