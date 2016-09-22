# $OpenBSD: Makefile,v 1.15 2016/09/22 12:57:18 fcambus Exp $

PORTROACH =	limit:^[0-9].*

COMMENT =	nyancat in your terminal

GH_ACCOUNT =	klange
GH_PROJECT =	nyancat
GH_TAGNAME =	1.5.1
EPOCH =		0
REVISION =	0

CATEGORIES =	misc

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# NCSA
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/nyancat ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/nyancat.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
