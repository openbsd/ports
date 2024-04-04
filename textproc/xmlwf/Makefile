COMMENT =	verifies XML documents

VERSION =	2.6.2
PKGNAME =	xmlwf-${VERSION}
DISTNAME =	expat-${VERSION}
SUPDISTFILES =	${DISTFILES}.asc

CATEGORIES =	textproc

HOMEPAGE =	https://libexpat.github.io/

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		c expat

SITES =			https://github.com/libexpat/libexpat/releases/download/R_${VERSION:S/./_/g}/

EXTRACT_SUFX =		.tar.bz2

NO_TEST =		Yes

CFLAGS =		-I${WRKDIR}/expat-${VERSION}/lib
WRKSRC =		${WRKDIR}/expat-${VERSION}/xmlwf

do-configure:
	ln -s ${FILESDIR}/Makefile ${WRKSRC}/
	cp ${FILESDIR}/expat_config.h ${WRKSRC}/

post-install:
	${INSTALL_MAN} ${WRKSRC}/../doc/xmlwf.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
