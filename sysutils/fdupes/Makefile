# $OpenBSD: Makefile,v 1.8 2013/10/11 23:50:57 naddy Exp $

COMMENT=	identify or delete duplicates

DISTNAME=	fdupes-1.40
REVISION =	2
CATEGORIES=	sysutils

HOMEPAGE=	http://netdial.caribe.net/~adrian2/fdupes.html
MASTER_SITES=	${HOMEPAGE:fdupes.html=programs/}

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

NO_TEST=	Yes

ALL_TARGET=

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fdupes ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/fdupes.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fdupes
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/fdupes/

.include <bsd.port.mk>
