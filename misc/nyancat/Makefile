# $OpenBSD: Makefile,v 1.14 2016/01/04 09:46:26 benoit Exp $

PORTROACH =	limit:^[0-9].*

COMMENT =	nyancat in your terminal

GH_ACCOUNT =	klange
GH_PROJECT =	nyancat
GH_TAGNAME =	1.5.1
EPOCH =		0

CATEGORIES =	misc

MAINTAINER =	Frederic Cambus <fred@statdns.com>

# NCSA
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/nyancat ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/nyancat.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
