# $OpenBSD: Makefile,v 1.16 2018/08/20 07:54:04 fcambus Exp $

PORTROACH =	limit:^[0-9].*

COMMENT =	nyancat in your terminal

GH_ACCOUNT =	klange
GH_PROJECT =	nyancat
GH_TAGNAME =	1.5.2
EPOCH =		0

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
