# $OpenBSD: Makefile,v 1.1.1.1 2008/06/20 06:03:43 ckuethe Exp $

COMMENT=	identify or delete duplicates

DISTNAME=	fdupes-1.40
CATEGORIES=	sysutils

MAINTAINER=	Antti Harri <iku@openbsd.fi>

HOMEPAGE=	http://netdial.caribe.net/~adrian2/fdupes.html
MASTER_SITES=	${HOMEPAGE:fdupes.html=programs/}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c

ALL_TARGET=

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fdupes ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/fdupes.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fdupes
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/fdupes/

.include <bsd.port.mk>
