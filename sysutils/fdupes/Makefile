# $OpenBSD: Makefile,v 1.7 2013/03/11 11:41:30 espie Exp $

COMMENT=	identify or delete duplicates

DISTNAME=	fdupes-1.40
REVISION =	2
CATEGORIES=	sysutils

HOMEPAGE=	http://netdial.caribe.net/~adrian2/fdupes.html
MASTER_SITES=	${HOMEPAGE:fdupes.html=programs/}

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

USE_GROFF =	Yes
NO_TEST=	Yes

ALL_TARGET=

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fdupes ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/fdupes.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fdupes
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/fdupes/

.include <bsd.port.mk>
