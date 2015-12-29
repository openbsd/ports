# $OpenBSD: Makefile,v 1.13 2015/12/29 19:49:40 jasper Exp $

PORTROACH =	limit:^[0-9].*

COMMENT =	nyancat in your terminal

GH_ACCOUNT =	klange
GH_PROJECT =	nyancat
GH_TAGNAME =	1.5.0
EPOCH =		0


CATEGORIES =	misc

MAINTAINER =	Frederic Cambus <fcambus@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/nyancat ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/nyancat.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
