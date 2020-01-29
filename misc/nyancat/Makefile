# $OpenBSD: Makefile,v 1.18 2020/01/29 09:38:25 fcambus Exp $

PORTROACH =	limit:^[0-9].*

COMMENT =	nyancat in your terminal

GH_ACCOUNT =	klange
GH_PROJECT =	nyancat
GH_TAGNAME =	1.5.2
REVISION =	0
EPOCH =		0

CATEGORIES =	misc

HOMEPAGE =	https://nyancat.dakko.us/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# NCSA
PERMIT_PACKAGE =	Yes

WANTLIB +=	c

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/nyancat ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/nyancat.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
